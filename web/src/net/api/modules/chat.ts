'use client'

import { AxiosInstance } from 'axios'
import type { ChatMessageDto, ChatMessageFormDto } from '../types/chat'

const chatApi = (axios: () => Promise<AxiosInstance>) => ({
  sendMessage: async (conversationId: string, request: ChatMessageFormDto) => {
    const client = await axios()
    const response = await client.post<ChatMessageDto[]>(
      `/api/v1/chat/conversation/${conversationId}/message`,
      request,
    )
    return response.data
  },
  getConversationHistory: async (conversationId: string) => {
    const client = await axios()
    const response = await client.get<ChatMessageDto[]>(
      `/api/v1/chat/conversation/${conversationId}/messages`,
    )
    return response.data
  },
})

export default chatApi
