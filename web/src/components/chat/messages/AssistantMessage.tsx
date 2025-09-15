import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar'
import { ChatMessageDto } from '@/net/api/types/chat'

interface AssistantMessageProps {
  message: ChatMessageDto
}

export function AssistantMessage({ message }: AssistantMessageProps) {
  return (
    <div className="flex gap-3 px-4 py-3 md:px-6 md:py-4 group/message animate-in fade-in slide-in-from-bottom-2 duration-300 flex-row">
      <Avatar className="size-8 md:size-9 shrink-0 transition-transform duration-200 hover:scale-105 mr-2">
        <AvatarImage src="/bot-avatar.png" alt="Assistant" />
        <AvatarFallback className="text-xs font-semibold transition-colors duration-200 bg-primary text-primary-foreground shadow-lg">
          AI
        </AvatarFallback>
      </Avatar>

      <div className="flex flex-col max-w-[85%] md:max-w-[75%] lg:max-w-[65%] items-start">
        <div className="flex items-center gap-2 mb-1 px-1 flex-row">
          <span className="font-semibold text-sm text-foreground">
            Assistant
          </span>
        </div>

        <div
          className="relative rounded-2xl px-4 py-3 max-w-full shadow-sm transition-all duration-200 hover:shadow-md focus-within:ring-2 focus-within:ring-primary/20 bg-card border text-foreground/80 border-border rounded-bl-md"
          role="article"
          aria-label="Message from assistant"
          tabIndex={0}
        >
          <div className="prose prose-sm max-w-none dark:prose-invert">
            <p className="whitespace-pre-wrap leading-relaxed m-0 text-sm md:text-base">
              {message.content}
            </p>
          </div>

          {/* Tool calls if present */}
          {message.toolCalls && message.toolCalls.length > 0 && (
            <div className="mt-3 space-y-2">
              <div className="text-xs text-muted-foreground font-medium">
                Tool Calls:
              </div>
              {message.toolCalls.map((toolCall) => (
                <div
                  key={toolCall.id}
                  className="bg-muted/30 rounded-lg p-2 border"
                >
                  <div className="text-xs font-medium text-foreground">
                    {toolCall.name}
                  </div>
                  <div className="text-xs text-muted-foreground mt-1 font-mono">
                    {toolCall.arguments}
                  </div>
                </div>
              ))}
            </div>
          )}

          {/* Tool responses if present */}
          {message.toolResponses && message.toolResponses.length > 0 && (
            <div className="mt-3 space-y-2">
              <div className="text-xs text-muted-foreground font-medium">
                Tool Results:
              </div>
              {message.toolResponses.map((response) => (
                <div
                  key={response.id}
                  className="bg-muted/20 rounded-lg p-2 border"
                >
                  <div className="text-xs font-medium text-foreground">
                    {response.name}
                  </div>
                  <div className="text-xs text-muted-foreground mt-1">
                    {response.responseData}
                  </div>
                </div>
              ))}
            </div>
          )}

        </div>
      </div>
    </div>
  )
}
