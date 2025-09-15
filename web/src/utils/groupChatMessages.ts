import { ChatMessageDto, MessageRole } from '@/net/api/types/chat'

export interface GroupedMessage {
  userMessage: ChatMessageDto
  intermediateMessages: ChatMessageDto[]
  finalAssistantMessage: ChatMessageDto | null
}

export interface ProcessedMessages {
  groupedMessages: GroupedMessage[]
  remainingMessages: ChatMessageDto[]
}

export function groupChatMessages(
  messages: ChatMessageDto[],
): ProcessedMessages {
  const groupedMessages: GroupedMessage[] = []
  const remainingMessages: ChatMessageDto[] = []

  let i = 0
  while (i < messages.length) {
    const currentMessage = messages[i]

    // Look for user messages to start a new group
    if (
      currentMessage.role === MessageRole.USER &&
      currentMessage.metadata?.source !== 'evaluator'
    ) {
      const group: GroupedMessage = {
        userMessage: currentMessage,
        intermediateMessages: [],
        finalAssistantMessage: null,
      }

      // Look ahead for intermediate messages and final assistant response
      let j = i + 1
      let lastAssistantMessage: ChatMessageDto | null = null

      while (j < messages.length) {
        const nextMessage = messages[j]

        // Stop if we hit another user message (start of next group)
        if (
          nextMessage.role === MessageRole.USER &&
          nextMessage.metadata?.source !== 'evaluator'
        ) {
          break
        }

        // Collect intermediate messages (tool calls, evaluator feedback, assistant messages with tools)
        if (
          nextMessage.role === MessageRole.TOOL ||
          (nextMessage.role === MessageRole.USER &&
            nextMessage.metadata?.source === 'evaluator') ||
          (nextMessage.role === MessageRole.ASSISTANT &&
            (nextMessage.toolCalls?.length || 0) > 0)
        ) {
          group.intermediateMessages.push(nextMessage)
        }
        // Track assistant messages without tool calls as potential final message
        else if (
          nextMessage.role === MessageRole.ASSISTANT &&
          !(nextMessage.toolCalls?.length || 0)
        ) {
          lastAssistantMessage = nextMessage
        }
        // Handle system messages or other types
        else {
          group.intermediateMessages.push(nextMessage)
        }

        j++
      }

      // Set the final assistant message if we found one
      group.finalAssistantMessage = lastAssistantMessage

      groupedMessages.push(group)
      i = j // Move to next unprocessed message
    } else {
      // Handle messages that don't fit the grouping pattern
      remainingMessages.push(currentMessage)
      i++
    }
  }

  return { groupedMessages, remainingMessages }
}

export function isMessageGroupable(messages: ChatMessageDto[]): boolean {
  // Check if messages contain patterns that would benefit from grouping
  const hasToolCalls = messages.some(
    (msg) => msg.toolCalls && msg.toolCalls.length > 0,
  )
  const hasEvaluatorFeedback = messages.some(
    (msg) =>
      msg.role === MessageRole.USER && msg.metadata?.source === 'evaluator',
  )
  const hasToolMessages = messages.some((msg) => msg.role === MessageRole.TOOL)

  return hasToolCalls || hasEvaluatorFeedback || hasToolMessages
}
