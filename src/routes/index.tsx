import { Link, createFileRoute } from '@tanstack/react-router'
import { MessageCircle } from 'lucide-react'
import { Button } from '@/components/ui/button'

export const Route = createFileRoute('/')({
  component: HomePage,
})

function HomePage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-background">
      <div className="text-center">
        <h1 className="text-4xl font-bold text-foreground mb-4">
          Spring Agent POC
        </h1>
        <p className="text-lg text-muted-foreground mb-8">
          Welcome to your TanStack Start application with AI Chat!
        </p>
        <Button asChild size="lg">
          <Link to="/chat" className="gap-2">
            <MessageCircle className="size-4" />
            Open Chat
          </Link>
        </Button>
      </div>
    </div>
  )
}
