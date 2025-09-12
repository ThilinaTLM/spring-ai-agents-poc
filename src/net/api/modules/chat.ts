'use client'

import { AxiosInstance } from 'axios'
import type { ChatExperimentFormDto, ChatExperimentDto } from '../types/chat'

const chatApi = (axios: () => Promise<AxiosInstance>) => ({
  experimentChat: async (request: ChatExperimentFormDto) => {
    const client = await axios()
    const response = await client.post<ChatExperimentDto>(
      '/api/v1/chat/experiment',
      request,
    )
    return response.data
  },
})

export default chatApi
