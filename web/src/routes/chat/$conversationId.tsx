import { createFileRoute } from '@tanstack/react-router'
import { ChatInterface } from '@/components/chat/ChatInterface'

export const Route = createFileRoute('/chat/$conversationId')({
  component: ChatPage,
})

function ChatPage() {
  return <ChatInterface />
}