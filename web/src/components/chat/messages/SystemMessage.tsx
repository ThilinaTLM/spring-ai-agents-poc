import { ChatMessageDto } from '@/net/api/types/chat'
import { Info } from 'lucide-react'

interface SystemMessageProps {
  message: ChatMessageDto
}

export function SystemMessage({ message }: SystemMessageProps) {
  return (
    <div className="flex justify-center px-4 py-2 md:px-6 md:py-3">
      <div className="flex items-center gap-2 px-3 py-2 bg-muted/50 border border-border rounded-full max-w-fit">
        <Info className="size-3 text-muted-foreground" />
        <span className="text-xs text-muted-foreground font-medium">
          {message.content}
        </span>
        <span className="text-xs text-muted-foreground/70">
          {new Date(message.timestamp).toLocaleTimeString([], {
            hour: '2-digit',
            minute: '2-digit',
          })}
        </span>
      </div>
    </div>
  )
}
