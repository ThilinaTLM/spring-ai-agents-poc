import { useMutation } from '@tanstack/react-query'
import api from '../api'
import { ChatMessageFormDto } from '../api/types/chat'

export const useSendMessage = () => {
  return useMutation({
    mutationFn: async ({
      conversationId,
      request,
    }: {
      conversationId: string
      request: ChatMessageFormDto
    }) => {
      return await api.chat.sendMessage(conversationId, request)
    },
  })
}
