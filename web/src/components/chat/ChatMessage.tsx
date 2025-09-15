import { ChatMessageDto, MessageRole } from '@/net/api/types/chat'
import { UserMessage } from './messages/UserMessage'
import { AssistantMessage } from './messages/AssistantMessage'
import { SystemMessage } from './messages/SystemMessage'
import { ToolMessage } from './messages/ToolMessage'
import { EvaluatorMessage } from './messages/EvaluatorMessage'

interface ChatMessageProps {
  message: ChatMessageDto
}

export function ChatMessage({ message }: ChatMessageProps) {
  // Check if this is an evaluator message
  if (
    message.role === MessageRole.USER &&
    message.metadata?.source === 'evaluator'
  ) {
    return <EvaluatorMessage message={message} />
  }

  switch (message.role) {
    case MessageRole.USER:
      return <UserMessage message={message} />
    case MessageRole.ASSISTANT:
      return <AssistantMessage message={message} />
    case MessageRole.SYSTEM:
      return <SystemMessage message={message} />
    case MessageRole.TOOL:
      return <ToolMessage message={message} />
    default:
      // Fallback for unknown roles
      return <AssistantMessage message={message} />
  }
}
