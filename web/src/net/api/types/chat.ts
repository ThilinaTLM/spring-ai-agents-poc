export type ChatExperimentFormDto = {
  prompt: string
}

export type ChatExperimentDto = {
  response: string
  timestamp: string
}

export type StartConversationFormDto = {
  title: string
}

export type ConversationDto = {
  conversationId: string
}

export type ChatMessageFormDto = {
  message: string
}

export type ChatMessageDto = {
  response: string
}
