import { useEffect, useRef } from 'react'
import { ChatMessage } from './ChatMessage'
import { ChatInput } from './ChatInput'
import { ChatHeader } from './ChatHeader'
import type { Message } from './ChatMessage'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Avatar, AvatarFallback } from '@/components/ui/avatar'
import { Sparkles } from 'lucide-react'
import { useStartConversation, useSendMessage } from '@/net/query/chat'
import {
  useMessages,
  useCurrentConversationId,
  useConversationLoading,
  useAddMessage,
  useSetCurrentConversationId,
  useSetLoading,
  useSetError,
} from '@/stores/conversationStore'

export function ChatInterface() {
  const messages = useMessages()
  const currentConversationId = useCurrentConversationId()
  const isLoading = useConversationLoading()
  const addMessage = useAddMessage()
  const setCurrentConversationId = useSetCurrentConversationId()
  const setLoading = useSetLoading()
  const setError = useSetError()

  const scrollAreaRef = useRef<HTMLDivElement>(null)
  const startConversationMutation = useStartConversation()
  const sendMessageMutation = useSendMessage()

  const scrollToBottom = () => {
    if (scrollAreaRef.current) {
      const scrollElement = scrollAreaRef.current.querySelector(
        '[data-radix-scroll-area-viewport]',
      )
      if (scrollElement) {
        scrollElement.scrollTo({
          top: scrollElement.scrollHeight,
          behavior: 'smooth',
        })
      }
    }
  }

  useEffect(() => {
    const timer = setTimeout(scrollToBottom, 100)
    return () => clearTimeout(timer)
  }, [messages, isLoading])

  const handleSendMessage = async (content: string) => {
    const userMessage: Message = {
      id: Date.now().toString(),
      content,
      role: 'user',
      timestamp: new Date().toString(),
    }

    addMessage(userMessage)
    setLoading(true)
    setError(null)

    try {
      let conversationId = currentConversationId

      // Start new conversation if we don't have one
      if (!conversationId) {
        const conversationResponse =
          await startConversationMutation.mutateAsync({
            title: content.slice(0, 50) + (content.length > 50 ? '...' : ''),
          })
        conversationId = conversationResponse.conversationId
        setCurrentConversationId(conversationId)
      }

      // Send message to the conversation
      const response = await sendMessageMutation.mutateAsync({
        conversationId,
        request: { message: content },
      })

      const botMessage: Message = {
        id: (Date.now() + 1).toString(),
        content: response.response,
        role: 'assistant',
        timestamp: new Date(),
      }

      addMessage(botMessage)
    } catch (error) {
      const errorMessage: Message = {
        id: (Date.now() + 1).toString(),
        content:
          "Sorry, I'm having trouble connecting right now. Please try again.",
        role: 'assistant',
        timestamp: new Date(),
      }

      addMessage(errorMessage)
      setError('Failed to send message')
    } finally {
      setLoading(false)
    }
  }

  return (
    <div className="w-full flex flex-col h-screen bg-background">
      <ChatHeader />

      {/* Messages Area */}
      <div className="w-full max-w-7xl mx-auto flex-1 overflow-hidden">
        <ScrollArea ref={scrollAreaRef} className="h-full">
          <div className="min-h-full pb-4">
            {messages.map((message, index) => (
              <div
                key={message.id}
                className="animate-in fade-in slide-in-from-bottom-2 duration-500"
                style={{ animationDelay: `${index * 100}ms` }}
              >
                <ChatMessage message={message} />
              </div>
            ))}

            {isLoading && (
              <div className="flex gap-3 px-4 py-3 md:px-6 md:py-4 animate-in fade-in slide-in-from-bottom-2 duration-300">
                <Avatar className="size-8 md:size-9 shrink-0 mr-2">
                  <AvatarFallback className="bg-primary text-primary-foreground text-xs font-semibold shadow-lg">
                    AI
                  </AvatarFallback>
                </Avatar>
                <div className="flex flex-col">
                  <div className="flex items-center gap-2 mb-2 px-1">
                    <span className="font-semibold text-sm text-foreground">
                      Assistant
                    </span>
                    <span className="text-xs text-muted-foreground">
                      typing...
                    </span>
                  </div>
                  <div className="relative rounded-2xl rounded-bl-md px-4 py-3 bg-card border border-border shadow-sm">
                    <div className="flex items-center gap-2">
                      <Sparkles className="size-4 text-primary animate-pulse" />
                      <div className="flex gap-1">
                        <div className="size-2 bg-muted-foreground/60 rounded-full animate-bounce [animation-delay:0ms]"></div>
                        <div className="size-2 bg-muted-foreground/60 rounded-full animate-bounce [animation-delay:150ms]"></div>
                        <div className="size-2 bg-muted-foreground/60 rounded-full animate-bounce [animation-delay:300ms]"></div>
                      </div>
                    </div>
                    {/* Message tail */}
                    <div className="absolute top-4 -left-1 w-3 h-3 bg-card border-l border-b border-border transform rotate-45" />
                  </div>
                </div>
              </div>
            )}
          </div>
        </ScrollArea>
      </div>

      {/* Input Area */}
      <ChatInput
        onSendMessage={handleSendMessage}
        disabled={isLoading}
        placeholder={isLoading ? 'AI is typing...' : 'Type your message...'}
      />
    </div>
  )
}
