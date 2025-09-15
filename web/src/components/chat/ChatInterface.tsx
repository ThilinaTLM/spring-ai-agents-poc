import { useEffect, useRef } from 'react'
import { ChatMessage } from './ChatMessage'
import { ChatInput } from './ChatInput'
import { ChatHeader } from './ChatHeader'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Avatar, AvatarFallback } from '@/components/ui/avatar'
import { Sparkles } from 'lucide-react'
import { useGetConversationHistory, useSendMessage } from '@/net/query/chat'
import { useParams } from '@tanstack/react-router'

export function ChatInterface() {
  const { conversationId } = useParams({ from: '/chat/$conversationId' })
  const scrollAreaRef = useRef<HTMLDivElement>(null)

  const {
    data: messages = [],
    isLoading: isLoadingHistory,
    error: historyError,
  } = useGetConversationHistory(conversationId)

  const sendMessageMutation = useSendMessage(conversationId)
  const isLoading = sendMessageMutation.isPending

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
    try {
      await sendMessageMutation.mutateAsync({ message: content })
    } catch (error) {
      console.error('Failed to send message:', error)
    }
  }

  if (isLoadingHistory) {
    return (
      <div className="w-full flex flex-col h-screen bg-background">
        <ChatHeader />
        <div className="flex-1 flex items-center justify-center">
          <div className="text-center">
            <div className="animate-spin h-8 w-8 border-2 border-primary border-t-transparent rounded-full mx-auto mb-4"></div>
            <p className="text-muted-foreground">Loading conversation...</p>
          </div>
        </div>
      </div>
    )
  }

  if (historyError) {
    return (
      <div className="w-full flex flex-col h-screen bg-background">
        <ChatHeader />
        <div className="flex-1 flex items-center justify-center">
          <div className="text-center">
            <p className="text-destructive mb-2">Failed to load conversation</p>
            <p className="text-muted-foreground text-sm">
              {historyError.message}
            </p>
          </div>
        </div>
      </div>
    )
  }

  return (
    <div className="w-full flex flex-col h-screen bg-background">
      <ChatHeader />

      {/* Messages Area */}
      <div className="w-full max-w-7xl mx-auto flex-1 overflow-hidden">
        <ScrollArea ref={scrollAreaRef} className="h-full">
          <div className="min-h-full pb-4">
            {messages.length === 0 ? (
              <div className="flex items-center justify-center min-h-[calc(100vh-15rem)]">
                <div className="text-center">
                  <div className="mb-4">
                    <Avatar className="size-16 mx-auto mb-4">
                      <AvatarFallback className="bg-primary text-primary-foreground text-lg">
                        AI
                      </AvatarFallback>
                    </Avatar>
                  </div>
                  <h3 className="text-lg font-semibold mb-2 text-foreground">
                    Start a conversation
                  </h3>
                  <p className="text-muted-foreground">
                    Type a message below to get started with your AI assistant.
                  </p>
                </div>
              </div>
            ) : (
              messages.map((message, index) => (
                <div
                  key={`message-${index}`}
                  className="animate-in fade-in slide-in-from-bottom-2 duration-500"
                  style={{ animationDelay: `${index * 100}ms` }}
                >
                  <ChatMessage message={message} />
                </div>
              ))
            )}

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
        disabled={isLoading || isLoadingHistory}
        placeholder={isLoading ? 'AI is typing...' : 'Type your message...'}
      />
    </div>
  )
}
