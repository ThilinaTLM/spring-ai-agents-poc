import { create } from 'zustand'
import { persist } from 'zustand/middleware'
import type { Message } from '@/components/chat/ChatMessage'

interface ConversationState {
  currentConversationId: string | null
  messages: Message[]
  isLoading: boolean
  error: string | null

  // Actions
  setCurrentConversationId: (id: string) => void
  addMessage: (message: Message) => void
  setMessages: (messages: Message[]) => void
  clearMessages: () => void
  startNewConversation: (conversationId?: string) => void
  setLoading: (loading: boolean) => void
  setError: (error: string | null) => void
  reset: () => void
}

const useConversationStore = create<ConversationState>()(
  persist(
    (set) => ({
      currentConversationId: null,
      messages: [
        {
          id: '1',
          content: "Hello! I'm your AI assistant. How can I help you today?",
          role: 'assistant',
          timestamp: new Date().toString(),
        },
      ],
      isLoading: false,
      error: null,

      setCurrentConversationId: (id: string) =>
        set({ currentConversationId: id }),

      addMessage: (message: Message) =>
        set((state) => ({
          messages: [...state.messages, message],
        })),

      setMessages: (messages: Message[]) => set({ messages }),

      clearMessages: () =>
        set({
          messages: [
            {
              id: '1',
              content:
                "Hello! I'm your AI assistant. How can I help you today?",
              role: 'assistant',
              timestamp: new Date().toString(),
            },
          ],
        }),

      startNewConversation: (conversationId?: string) =>
        set({
          currentConversationId: conversationId || null,
          messages: [
            {
              id: '1',
              content:
                "Hello! I'm your AI assistant. How can I help you today?",
              role: 'assistant',
              timestamp: new Date().toString(),
            },
          ],
          error: null,
        }),

      setLoading: (loading: boolean) => set({ isLoading: loading }),

      setError: (error: string | null) => set({ error }),

      reset: () =>
        set({
          currentConversationId: null,
          messages: [
            {
              id: '1',
              content:
                "Hello! I'm your AI assistant. How can I help you today?",
              role: 'assistant',
              timestamp: new Date().toString(),
            },
          ],
          isLoading: false,
          error: null,
        }),
    }),
    {
      name: 'conversation-store',
      partialize: (state) => ({
        currentConversationId: state.currentConversationId,
        messages: state.messages,
      }),
    },
  ),
)

export default useConversationStore

// Convenience hooks
export const useCurrentConversationId = () =>
  useConversationStore((state) => state.currentConversationId)

export const useMessages = () => useConversationStore((state) => state.messages)

export const useConversationLoading = () =>
  useConversationStore((state) => state.isLoading)

export const useConversationError = () =>
  useConversationStore((state) => state.error)

// Individual action hooks to prevent unnecessary re-renders
export const useSetCurrentConversationId = () =>
  useConversationStore((state) => state.setCurrentConversationId)

export const useAddMessage = () =>
  useConversationStore((state) => state.addMessage)

export const useSetMessages = () =>
  useConversationStore((state) => state.setMessages)

export const useClearMessages = () =>
  useConversationStore((state) => state.clearMessages)

export const useStartNewConversation = () =>
  useConversationStore((state) => state.startNewConversation)

export const useSetLoading = () =>
  useConversationStore((state) => state.setLoading)

export const useSetError = () => useConversationStore((state) => state.setError)

export const useResetConversation = () =>
  useConversationStore((state) => state.reset)
