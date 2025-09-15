import { useEffect, useRef, useState } from 'react'
import { Paperclip, Send, Smile } from 'lucide-react'
import { Button } from '@/components/ui/button'
import { Textarea } from '@/components/ui/textarea'
import { cn } from '@/lib/utils'

interface ChatInputProps {
  onSendMessage: (message: string) => void
  disabled?: boolean
  placeholder?: string
}

export function ChatInput({
  onSendMessage,
  disabled = false,
  placeholder = 'Type your message...',
}: ChatInputProps) {
  const [message, setMessage] = useState('')
  const [isFocused, setIsFocused] = useState(false)
  const textareaRef = useRef<HTMLTextAreaElement>(null)

  const handleSend = () => {
    const trimmedMessage = message.trim()
    if (trimmedMessage && !disabled) {
      onSendMessage(trimmedMessage)
      setMessage('')

      // Reset textarea height
      if (textareaRef.current) {
        textareaRef.current.style.height = 'auto'
      }
    }
  }

  const handleKeyDown = (e: React.KeyboardEvent) => {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault()
      handleSend()
    }
  }

  const adjustTextareaHeight = () => {
    const textarea = textareaRef.current
    if (textarea) {
      textarea.style.height = 'auto'
      const scrollHeight = textarea.scrollHeight
      const maxHeight = 160 // Reduced max height for better mobile experience
      textarea.style.height = `${Math.min(scrollHeight, maxHeight)}px`
    }
  }

  useEffect(() => {
    adjustTextareaHeight()
  }, [message])

  const canSend = message.trim() && !disabled

  return (
    <div className="bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/80 p-3 md:p-4">
      <div className="mx-auto max-w-4xl">
        <div
          className={cn(
            'flex gap-2 items-end p-2 rounded-2xl border transition-all duration-200',
            isFocused
              ? 'border-primary/50 shadow-lg ring-2 ring-primary/10'
              : 'border-border hover:border-border/80 shadow-sm',
          )}
        >
          {/* Attachment button (optional) */}
          <Button
            variant="ghost"
            size="icon"
            className="shrink-0 size-9 text-muted-foreground hover:text-foreground transition-colors duration-200 focus-visible:ring-2 focus-visible:ring-primary/20"
            disabled={disabled}
            aria-label="Attach file"
            tabIndex={0}
          >
            <Paperclip className="size-4" />
          </Button>

          <div className="flex-1 relative">
            <Textarea
              ref={textareaRef}
              value={message}
              onChange={(e) => setMessage(e.target.value)}
              onKeyDown={handleKeyDown}
              onFocus={() => setIsFocused(true)}
              onBlur={() => setIsFocused(false)}
              placeholder={placeholder}
              disabled={disabled}
              aria-label="Type your message"
              aria-describedby="input-help"
              className={cn(
                'min-h-[40px] max-h-[160px] resize-none border-0 shadow-none focus-visible:ring-0 bg-transparent',
                'placeholder:text-muted-foreground/70 text-foreground text-sm md:text-base',
              )}
              rows={1}
            />
          </div>

          {/* Emoji button (optional) */}
          <Button
            variant="ghost"
            size="icon"
            className="shrink-0 size-9 text-muted-foreground hover:text-foreground transition-colors duration-200 focus-visible:ring-2 focus-visible:ring-primary/20"
            disabled={disabled}
            aria-label="Add emoji"
            tabIndex={0}
          >
            <Smile className="size-4" />
          </Button>

          <Button
            onClick={handleSend}
            disabled={!canSend}
            size="icon"
            className={cn(
              'shrink-0 size-9 transition-all duration-200',
              canSend
                ? 'bg-primary hover:bg-primary/90 scale-100 shadow-md hover:shadow-lg'
                : 'scale-90 opacity-50',
            )}
          >
            <Send className="size-4" />
            <span className="sr-only">Send message</span>
          </Button>
        </div>

        {/* Helper text */}
        <div
          id="input-help"
          className="flex items-center justify-between mt-2 px-2"
        >
          <span className="text-xs text-muted-foreground">
            Press Enter to send, Shift+Enter for new line
          </span>
          <span
            className={cn(
              'text-xs transition-colors duration-200',
              message.length > 500
                ? 'text-destructive'
                : 'text-muted-foreground',
            )}
          >
            {message.length}/1000
          </span>
        </div>
      </div>
    </div>
  )
}
