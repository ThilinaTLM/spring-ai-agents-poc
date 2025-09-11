import { useEffect, useRef, useState } from 'react'
import { ChatMessage } from './ChatMessage'
import { ChatInput } from './ChatInput'
import type { Message } from './ChatMessage'
import { ScrollArea } from '@/components/ui/scroll-area'
import { Avatar, AvatarFallback } from '@/components/ui/avatar'
import { MessageCircle, Zap, Sparkles } from 'lucide-react'

const SAMPLE_RESPONSES = [
  "I'm here to help! What would you like to know?",
  "That's an interesting question. Let me think about that...",
  "I understand what you're asking. Here's my perspective on that:",
  "Great question! I'd be happy to help you with that.",
  "That's a thoughtful inquiry. Let me provide some insights:",
  "I appreciate you asking about that. Here's what I think:",
  "That's something I can definitely help with. Let me explain:",
  "Interesting point! I'd like to share my thoughts on this:",
]

export function ChatInterface() {
  const [messages, setMessages] = useState<Array<Message>>([
    {
      id: '1',
      content: "Hello! I'm your AI assistant. How can I help you today?",
      role: 'assistant',
      timestamp: new Date(),
    },
  ])
  const [isTyping, setIsTyping] = useState(false)
  const scrollAreaRef = useRef<HTMLDivElement>(null)

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
  }, [messages, isTyping])

  const handleSendMessage = async (content: string) => {
    const userMessage: Message = {
      id: Date.now().toString(),
      content,
      role: 'user',
      timestamp: new Date(),
    }

    setMessages((prev) => [...prev, userMessage])
    setIsTyping(true)

    // Simulate AI response delay
    await new Promise((resolve) =>
      setTimeout(resolve, 1000 + Math.random() * 2000),
    )

    const botMessage: Message = {
      id: (Date.now() + 1).toString(),
      content:
        SAMPLE_RESPONSES[Math.floor(Math.random() * SAMPLE_RESPONSES.length)],
      role: 'assistant',
      timestamp: new Date(),
    }

    setMessages((prev) => [...prev, botMessage])
    setIsTyping(false)
  }

  return (
    <div className="w-full max-w-4xl mx-auto flex flex-col h-screen bg-gradient-to-b from-background to-muted/20">
      {/* Enhanced Header */}
      <div className="border-b bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/80 shadow-sm">
        <div className="flex items-center justify-center px-4 md:px-6 py-4">
          <div className="flex items-center gap-3">
            <div className="relative">
              <div className="size-10 bg-gradient-to-br from-primary to-chart-2 rounded-full flex items-center justify-center shadow-lg">
                <MessageCircle className="size-5 text-white" />
              </div>
              <div className="absolute -bottom-1 -right-1 size-4 bg-chart-4 border-2 border-background rounded-full animate-pulse" />
            </div>
            <div>
              <h1 className="text-lg md:text-xl font-bold bg-gradient-to-r from-primary to-chart-2 bg-clip-text text-transparent">
                AI Chat Assistant
              </h1>
              <p className="text-xs text-muted-foreground">
                Always ready to help
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Messages Area */}
      <div className="flex-1 overflow-hidden">
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

            {isTyping && (
              <div className="flex gap-3 px-4 py-3 md:px-6 md:py-4 animate-in fade-in slide-in-from-bottom-2 duration-300">
                <Avatar className="size-8 md:size-9 shrink-0 mr-2">
                  <AvatarFallback className="bg-gradient-to-br from-primary to-primary/90 text-white text-xs font-semibold shadow-lg">
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
        disabled={isTyping}
        placeholder={isTyping ? 'AI is typing...' : 'Type your message...'}
      />
    </div>
  )
}
