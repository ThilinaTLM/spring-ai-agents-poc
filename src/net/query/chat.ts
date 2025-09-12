import { useMutation } from '@tanstack/react-query'
import api from '../api'
import { StartConversationFormDto, ChatMessageFormDto } from '../api/types/chat'

export const useStartConversation = () => {
  return useMutation({
    mutationFn: async (request: StartConversationFormDto) => {
      return await api.chat.startConversation(request)
    },
  })
}

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

export const useClearConversation = () => {
  return useMutation({
    mutationFn: async (conversationId: string) => {
      return await api.chat.clearConversation(conversationId)
    },
  })
}
