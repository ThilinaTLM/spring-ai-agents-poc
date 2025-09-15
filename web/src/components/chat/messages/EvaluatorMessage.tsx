import { Avatar, AvatarFallback } from '@/components/ui/avatar'
import { ChatMessageDto } from '@/net/api/types/chat'
import { AlertTriangle } from 'lucide-react'

interface EvaluatorMessageProps {
  message: ChatMessageDto
}

export function EvaluatorMessage({ message }: EvaluatorMessageProps) {
  return (
    <div className="flex gap-3 px-4 py-3 md:px-6 md:py-4 group/message animate-in fade-in slide-in-from-bottom-2 duration-300 flex-row">
      <Avatar className="size-8 md:size-9 shrink-0 transition-transform duration-200 hover:scale-105 mr-2">
        <AvatarFallback className="text-xs font-semibold transition-colors duration-200 bg-amber-500 text-amber-50 shadow-lg">
          E
        </AvatarFallback>
      </Avatar>

      <div className="flex flex-col max-w-[85%] md:max-w-[75%] lg:max-w-[65%] items-start">
        <div className="flex items-center gap-2 mb-1 px-1 flex-row">
          <AlertTriangle className="size-3 text-amber-600" />
          <span className="font-semibold text-sm text-foreground">
            Evaluator Feedback
          </span>
        </div>

        <div
          className="relative rounded-2xl px-4 py-3 max-w-full shadow-sm transition-all duration-200 hover:shadow-md focus-within:ring-2 focus-within:ring-amber-500/20 bg-amber-50 border border-amber-200 text-amber-900 rounded-bl-md dark:bg-amber-950/20 dark:border-amber-800/30 dark:text-amber-100"
          role="article"
          aria-label="Evaluator feedback message"
          tabIndex={0}
        >
          <div className="prose prose-sm max-w-none prose-amber dark:prose-amber">
            <p className="whitespace-pre-wrap leading-relaxed m-0 text-sm md:text-base">
              {message.content}
            </p>
          </div>
        </div>
      </div>
    </div>
  )
}
