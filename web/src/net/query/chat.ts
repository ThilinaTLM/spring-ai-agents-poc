import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query'
import api from '../api'
import { ChatMessageFormDto } from '../api/types/chat'

export const useSendMessage = (conversationId: string) => {
  const queryClient = useQueryClient()

  return useMutation({
    mutationFn: async (request: ChatMessageFormDto) => {
      return await api.chat.sendMessage(conversationId, request)
    },
    onSettled: () => {
      void queryClient.invalidateQueries({ queryKey: ['conversation-history', conversationId] })
    },
  })
}

export const useGetConversationHistory = (conversationId: string) => {
  return useQuery({
    queryKey: ['conversation-history', conversationId],
    queryFn: () => api.chat.getConversationHistory(conversationId),
    enabled: !!conversationId,
  })
}
