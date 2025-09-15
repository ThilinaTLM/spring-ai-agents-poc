import { useQuery } from '@tanstack/react-query'

const CONFIG_URL = '/api/config'

type EnvironmentConfig = {
  apiBaseUrl: string
  kcHost: string
  kcRealm: string
  kcClientId: string
}

export async function fetchConfig(): Promise<EnvironmentConfig> {
  if (import.meta.env.DEV) {
    return {
      apiBaseUrl: import.meta.env.VITE_API_BASE_URL,
      kcHost: import.meta.env.VITE_KC_HOST,
      kcRealm: import.meta.env.VITE_KC_REALM,
      kcClientId: import.meta.env.VITE_KC_CLIENT_ID,
    }
  }

  const response = await fetch(CONFIG_URL)
  if (!response.ok) {
    throw new Error('Failed to fetch configuration')
  }
  return await response.json()
}

export const useConfig = () => {
  const { data: config } = useQuery({
    queryKey: ['config'],
    queryFn: fetchConfig,
    retry: false,
    refetchOnWindowFocus: false,
    refetchOnReconnect: false,
    refetchOnMount: false,
  })
  return config
}
