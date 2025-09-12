import { useEffect, useRef, useState } from 'react'
import { ChatMessage } from './ChatMessage'
import { ChatInput } from './ChatInput'
import { ChatHeader } from './ChatHeader'
import type { Message } from './ChatMessage'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Avatar, AvatarFallback } from '@/components/ui/avatar'
import { Sparkles } from 'lucide-react'
import { useSendChatMessageExperiment } from '@/net/query/chat'

export function ChatInterface() {
  const [messages, setMessages] = useState<Array<Message>>([
    {
      id: '1',
      content: "Hello! I'm your AI assistant. How can I help you today?",
      role: 'assistant',
      timestamp: new Date(),
    },
  ])
  const scrollAreaRef = useRef<HTMLDivElement>(null)
  const chatMutation = useSendChatMessageExperiment()

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
  }, [messages, chatMutation.isPending])

  const handleSendMessage = async (content: string) => {
    const userMessage: Message = {
      id: Date.now().toString(),
      content,
      role: 'user',
      timestamp: new Date(),
    }

    setMessages((prev) => [...prev, userMessage])

    try {
      const response = await chatMutation.mutateAsync({ prompt: content })

      const botMessage: Message = {
        id: (Date.now() + 1).toString(),
        content: response.response,
        role: 'assistant',
        timestamp: new Date(response.timestamp),
      }

      setMessages((prev) => [...prev, botMessage])
    } catch (error) {
      // Add error message to chat
      const errorMessage: Message = {
        id: (Date.now() + 1).toString(),
        content:
          "Sorry, I'm having trouble connecting right now. Please try again.",
        role: 'assistant',
        timestamp: new Date(),
      }

      setMessages((prev) => [...prev, errorMessage])
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

            {chatMutation.isPending && (
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
        disabled={chatMutation.isPending}
        placeholder={
          chatMutation.isPending ? 'AI is typing...' : 'Type your message...'
        }
      />
    </div>
  )
}
