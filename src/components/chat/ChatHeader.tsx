import { MessageCircle } from 'lucide-react'
import { ThemeToggle } from '@/components/common/ThemeToggle'

export function ChatHeader() {
  return (
    <div className="bg-background/95 backdrop-blur supports-[backdrop-filter]:bg-background/80 shadow-sm">
      <div className="flex items-center justify-between px-4 md:px-6 py-4">
        <div className="flex items-center gap-3">
          <div className="relative">
            <div className="size-10 bg-primary rounded-full flex items-center justify-center shadow-lg">
              <MessageCircle className="size-5 text-white" />
            </div>
            <div className="absolute -bottom-1 -right-1 size-4 bg-chart-4 border-2 border-background rounded-full animate-pulse" />
          </div>
          <div>
            <h1 className="text-lg md:text-xl font-bold text-primary">
              AI Chat Assistant
            </h1>
            <p className="text-xs text-muted-foreground">
              Always ready to help
            </p>
          </div>
        </div>
        <ThemeToggle />
      </div>
    </div>
  )
}
