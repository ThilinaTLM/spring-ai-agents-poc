import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar'
import { ChatMessageDto } from '@/net/api/types/chat'
import { useAuthUserNameInitials } from '@/stores/authStore.ts'

interface UserMessageProps {
  message: ChatMessageDto
}

export function UserMessage({ message }: UserMessageProps) {
  const userNameInitials = useAuthUserNameInitials();

  return (
    <div className="flex gap-3 px-4 py-3 md:px-6 md:py-4 group/message animate-in fade-in slide-in-from-bottom-2 duration-300 flex-row-reverse">
      <Avatar className="size-8 md:size-9 shrink-0 transition-transform duration-200 hover:scale-105 ml-2">
        <AvatarImage src={undefined} alt="User" />
        <AvatarFallback className="text-xs font-semibold transition-colors duration-200 bg-chart-2 text-background shadow-lg">
          {userNameInitials}
        </AvatarFallback>
      </Avatar>

      <div className="flex flex-col max-w-[85%] md:max-w-[75%] lg:max-w-[65%] items-end">
        <div className="flex items-center gap-2 mb-1 px-1 flex-row-reverse">
          <span className="font-semibold text-sm text-foreground">You</span>
        </div>

        <div
          className="relative rounded-2xl px-4 py-3 max-w-full shadow-sm transition-all duration-200 hover:shadow-md focus-within:ring-2 focus-within:ring-primary/20 bg-chart-2 text-background rounded-br-md"
          role="article"
          aria-label="Message from you"
          tabIndex={0}
        >
          <div className="prose prose-sm max-w-none prose-invert [&>p]:text-background">
            <p className="whitespace-pre-wrap leading-relaxed m-0 text-sm md:text-base">
              {message.content}
            </p>
          </div>

          {/* Message tail */}
          <div className="absolute top-4 -right-1 w-3 h-3 transform rotate-45 bg-chart-2" />
        </div>
      </div>
    </div>
  )
}
