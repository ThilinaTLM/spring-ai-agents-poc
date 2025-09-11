import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar'
import { cn } from '@/lib/utils'

export interface Message {
  id: string
  content: string
  role: 'user' | 'assistant'
  timestamp: Date
}

interface ChatMessageProps {
  message: Message
}

export function ChatMessage({ message }: ChatMessageProps) {
  const isUser = message.role === 'user'

  return (
    <div
      className={cn(
        'flex gap-3 px-4 py-3 md:px-6 md:py-4 group/message animate-in fade-in slide-in-from-bottom-2 duration-300',
        isUser ? 'flex-row-reverse' : 'flex-row',
      )}
    >
      <Avatar
        className={cn(
          'size-8 md:size-9 shrink-0 transition-transform duration-200 hover:scale-105',
          isUser ? 'ml-2' : 'mr-2',
        )}
      >
        <AvatarImage
          src={isUser ? undefined : '/bot-avatar.png'}
          alt={isUser ? 'User' : 'Assistant'}
        />
        <AvatarFallback
          className={cn(
            'text-xs font-semibold transition-colors duration-200',
            isUser
              ? 'bg-chart-2 text-background shadow-lg'
              : 'bg-primary text-primary-foreground shadow-lg',
          )}
        >
          {isUser ? 'U' : 'AI'}
        </AvatarFallback>
      </Avatar>

      <div
        className={cn(
          'flex flex-col max-w-[85%] md:max-w-[75%] lg:max-w-[65%]',
          isUser ? 'items-end' : 'items-start',
        )}
      >
        <div
          className={cn(
            'flex items-center gap-2 mb-1 px-1',
            isUser ? 'flex-row-reverse' : 'flex-row',
          )}
        >
          <span className="font-semibold text-sm text-foreground">
            {isUser ? 'You' : 'Assistant'}
          </span>
          <span className="text-xs text-muted-foreground">
            {message.timestamp.toLocaleTimeString([], {
              hour: '2-digit',
              minute: '2-digit',
            })}
          </span>
        </div>

        <div
          className={cn(
            'relative rounded-2xl px-4 py-3 max-w-full shadow-sm transition-all duration-200 hover:shadow-md focus-within:ring-2 focus-within:ring-primary/20',
            isUser
              ? 'bg-chart-2 text-background rounded-br-md'
              : 'bg-card border text-foreground/80 border-border rounded-bl-md',
          )}
          role="article"
          aria-label={`Message from ${isUser ? 'you' : 'assistant'}`}
          tabIndex={0}
        >
          <div
            className={cn(
              'prose prose-sm max-w-none',
              isUser
                ? 'prose-invert [&>p]:text-background'
                : 'dark:prose-invert',
            )}
          >
            <p className="whitespace-pre-wrap leading-relaxed m-0 text-sm md:text-base">
              {message.content}
            </p>
          </div>

          {/* Message tail */}
          <div
            className={cn(
              'absolute top-4 w-3 h-3 transform rotate-45',
              isUser
                ? '-right-1 bg-chart-2'
                : '-left-1 bg-card border-l border-b border-border',
            )}
          />
        </div>
      </div>
    </div>
  )
}
