import { createFileRoute, useNavigate } from '@tanstack/react-router'
import { useEffect } from 'react'
import { v4 as uuidv4 } from 'uuid'

export const Route = createFileRoute('/chat/')({
  component: ChatIndexPage,
})

function ChatIndexPage() {
  const navigate = useNavigate()

  useEffect(() => {
    // Generate a new conversation ID and redirect
    const conversationId = uuidv4()
    navigate({ to: '/chat/$conversationId', params: { conversationId } })
  }, [navigate])

  return (
    <div className="flex items-center justify-center h-screen">
      <div className="text-center">
        <div className="animate-spin h-8 w-8 border-2 border-primary border-t-transparent rounded-full mx-auto mb-4"></div>
        <p className="text-muted-foreground">Starting new conversation...</p>
      </div>
    </div>
  )
}
