import { ChatMessageDto } from '@/net/api/types/chat'
import { Settings } from 'lucide-react'

interface ToolMessageProps {
  message: ChatMessageDto
}

export function ToolMessage({ message }: ToolMessageProps) {
  return (
    <div className="flex gap-3 px-4 py-3 md:px-6 md:py-4 group/message animate-in fade-in slide-in-from-bottom-2 duration-300">
      <div className="size-8 md:size-9 shrink-0 mr-2 flex items-center justify-center bg-accent text-accent-foreground rounded-full">
        <Settings className="size-4" />
      </div>

      <div className="flex flex-col max-w-[85%] md:max-w-[75%] lg:max-w-[65%] items-start">
        <div className="flex items-center gap-2 mb-1 px-1">
          <span className="font-semibold text-sm text-foreground">Tool</span>
          <span className="text-xs text-muted-foreground">
            {new Date(message.timestamp).toLocaleTimeString([], {
              hour: '2-digit',
              minute: '2-digit',
            })}
          </span>
        </div>

        <div
          className="relative rounded-2xl px-4 py-3 max-w-full shadow-sm transition-all duration-200 hover:shadow-md focus-within:ring-2 focus-within:ring-primary/20 bg-accent/20 border border-accent/30 rounded-bl-md"
          role="article"
          aria-label="Tool message"
          tabIndex={0}
        >
          <div className="prose prose-sm max-w-none dark:prose-invert">
            <p className="whitespace-pre-wrap leading-relaxed m-0 text-sm md:text-base font-mono">
              {message.content}
            </p>
          </div>

          {/* Media content if present */}
          {message.media && message.media.length > 0 && (
            <div className="mt-3 space-y-2">
              <div className="text-xs text-muted-foreground font-medium">Media:</div>
              {message.media.map((media, index) => (
                <div key={index} className="bg-muted/30 rounded-lg p-2 border">
                  <div className="text-xs font-medium text-foreground">{media.mimeType}</div>
                  <div className="text-xs text-muted-foreground mt-1">
                    {media.metadata && Object.keys(media.metadata).length > 0 && (
                      <pre className="text-xs">
                        {JSON.stringify(media.metadata, null, 2)}
                      </pre>
                    )}
                  </div>
                </div>
              ))}
            </div>
          )}

          {/* Message tail */}
          <div className="absolute top-4 -left-1 w-3 h-3 bg-accent/20 border-l border-b border-accent/30 transform rotate-45" />
        </div>
      </div>
    </div>
  )
}
