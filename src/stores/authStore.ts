import { create } from 'zustand'
import { UserDto } from '@/net/api/types/user'
import type Keycloak from 'keycloak-js'

type AuthStore = {
  keycloak: Keycloak | null
  token: string | null
  user: UserDto | null
  setSession: (kc: Keycloak) => void
  clearSession: () => void
  setKeycloak: (kc: Keycloak) => void
}

const useAuthStore = create<AuthStore>((set) => ({
  keycloak: null,
  token: null,
  user: null,
  setKeycloak: (kc: Keycloak) => set({ keycloak: kc }),
  setSession: (kc) => {
    const token = kc.token
    const user = {
      id: kc.tokenParsed?.sub ?? null,
      firstName: kc.tokenParsed?.given_name ?? null,
      lastName: kc.tokenParsed?.family_name ?? null,
      username: kc.tokenParsed?.preferred_username ?? null,
      email: kc.tokenParsed?.email ?? null,
    }
    set({ token, user })
  },
  clearSession: () => set({ token: null, user: null }),
}))

export const useSetSession = () => useAuthStore((state) => state.setSession)
export const useClearSession = () => useAuthStore((state) => state.clearSession)
export const useSetKeycloak = () => useAuthStore((state) => state.setKeycloak)

export const getAuthUser = () => useAuthStore.getState().user
export const getAuthToken = () => useAuthStore.getState().token

export const useAuthUser = () => useAuthStore((state) => state.user)
export const useAuthFullName = () =>
  useAuthStore((state) => `${state.user?.firstName} ${state.user?.lastName}`)
export const useIsAuthenticated = () =>
  useAuthStore((state) => state.token !== null)

export const useAuthActions = () => {
  const { keycloak } = useAuthStore()
  if (!keycloak) {
    throw new Error('Keycloak client is not initialized')
  }
  const login = () => keycloak.login({ scope: 'openid profile email roles' })
  const logout = () => keycloak.logout()
  return { login, logout }
}
