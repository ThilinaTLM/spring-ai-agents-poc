'use client'

import { AxiosInstance } from 'axios'
import type { 
  ChatExperimentFormDto, 
  ChatExperimentDto,
  StartConversationFormDto,
  ConversationDto,
  ChatMessageFormDto,
  ChatMessageDto
} from '../types/chat'

const chatApi = (axios: () => Promise<AxiosInstance>) => ({
  experimentChat: async (request: ChatExperimentFormDto) => {
    const client = await axios()
    const response = await client.post<ChatExperimentDto>(
      '/api/v1/chat/experiment',
      request,
    )
    return response.data
  },

  startConversation: async (request: StartConversationFormDto) => {
    const client = await axios()
    const response = await client.post<ConversationDto>(
      '/api/v1/chat/conversation',
      request,
    )
    return response.data
  },

  sendMessage: async (conversationId: string, request: ChatMessageFormDto) => {
    const client = await axios()
    const response = await client.post<ChatMessageDto>(
      `/api/v1/chat/conversation/${conversationId}/message`,
      request,
    )
    return response.data
  },

  clearConversation: async (conversationId: string) => {
    const client = await axios()
    await client.delete(
      `/api/v1/chat/conversation/${conversationId}/messages`,
    )
  },
})

export default chatApi
