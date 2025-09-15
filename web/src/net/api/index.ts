import axios, { AxiosInstance } from 'axios'
import { getAuthToken } from '@/stores/authStore.ts'
import { fetchConfig } from '@/hooks/useConfig.tsx'
import chatApi from './modules/chat.ts'

let apiClient: Promise<AxiosInstance>

export async function getApiClient(): Promise<AxiosInstance> {
  const config = await fetchConfig()
  if (!apiClient) {
    const BASE_URL = config.apiBaseUrl || window.location.origin
    const axiosInstance = axios.create({
      baseURL: BASE_URL,
      headers: {
        'Content-Type': 'application/json',
      },
    })

    axiosInstance.interceptors.request.use(async (config) => {
      const token = getAuthToken()
      console.log('Attaching token to request:', token)
      if (token) {
        config.headers = config.headers ?? {}
        config.headers.Authorization = `Bearer ${token}`
      }

      return config
    })

    apiClient = Promise.resolve(axiosInstance)
  }
  return apiClient
}

const api = {
  chat: chatApi(getApiClient),
}

export default api
