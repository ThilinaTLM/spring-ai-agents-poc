import { useMutation, useQuery, useQueryClient } from '@tanstack/react-query'
import api from '../api'
import {
  ChatMessageDto,
  ChatMessageFormDto,
  MessageRole,
} from '../api/types/chat'

export const useSendMessage = (conversationId: string) => {
  const queryClient = useQueryClient()

  return useMutation({
    mutationFn: async (request: ChatMessageFormDto) => {
      return await api.chat.sendMessage(conversationId, request)
    },
    onMutate: async (request: ChatMessageFormDto) => {
      await queryClient.cancelQueries({
        queryKey: ['conversation-history', conversationId],
      })
      queryClient.setQueryData<ChatMessageDto[]>(
        ['conversation-history', conversationId],
        (oldMessages) => [...(oldMessages || []), {
          role: MessageRole.USER,
          content: request.message,
        }],
      )
    },
    onSettled: () => {
      void queryClient.invalidateQueries({
        queryKey: ['conversation-history', conversationId],
      })
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
