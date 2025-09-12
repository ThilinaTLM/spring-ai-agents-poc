import { useMutation } from '@tanstack/react-query'
import api from '../api'
import { ChatExperimentFormDto } from '../api/types/chat'

export const useSendChatMessageExperiment = () => {
  return useMutation({
    mutationFn: async (request: ChatExperimentFormDto) => {
      return await api.chat.experimentChat(request)
    },
  })
}
