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

export enum MessageRole {
  USER = 'USER',
  ASSISTANT = 'ASSISTANT',
  SYSTEM = 'SYSTEM',
  TOOL = 'TOOL'
}

export interface ChatToolCall {
  id: string
  type: string
  name: string
  arguments: string
}

export interface ChatToolResponse {
  id: string
  name: string
  responseData: string
}

export interface ChatMedia {
  mimeType: string
  data: any
  metadata?: Record<string, any>
}

export interface ChatMessageDto {
  id?: string
  role: MessageRole
  content: string
  timestamp: string
  metadata?: Record<string, any>
  toolCalls?: ChatToolCall[]
  media?: ChatMedia[]
  toolResponses?: ChatToolResponse[]
}
