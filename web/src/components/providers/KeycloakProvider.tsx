import React, { useEffect, useMemo } from 'react'
import { useConfig } from '@/hooks/useConfig.tsx'
import Keycloak from 'keycloak-js'
import {
  useClearSession,
  useSetKeycloak,
  useSetSession,
} from '@/stores/authStore.ts'

type KeycloakProviderProps = {
  children: React.ReactNode
}

const KeycloakProvider: React.FC<KeycloakProviderProps> = ({ children }) => {
  const config = useConfig()
  const setSession = useSetSession()
  const clearSession = useClearSession()
  const setKeycloak = useSetKeycloak()
  const [initialized, setInitialized] = React.useState(false)

  const keycloak = useMemo(() => {
    if (!config || !setKeycloak) {
      return null
    }
    return new Keycloak({
      url: config.kcHost,
      realm: config.kcRealm,
      clientId: config.kcClientId,
    })
  }, [config, setKeycloak])

  useEffect(() => {
    if (!keycloak || !setSession || !clearSession) {
      return
    }

    const onSuccess = () => setSession(keycloak)
    const onFail = () => clearSession()

    keycloak.onAuthSuccess = onSuccess
    keycloak.onAuthRefreshSuccess = onSuccess
    keycloak.onAuthError = onFail
    keycloak.onAuthRefreshError = onFail
    keycloak.onAuthLogout = onFail
    keycloak.onTokenExpired = onSuccess

    keycloak.onTokenExpired = () => {
      void keycloak.updateToken()
    }

    keycloak
      .init({
        onLoad: 'check-sso',
        checkLoginIframe: false,
      })
      .then((authenticated) => {
        if (authenticated) {
          onSuccess()
        } else {
          onFail()
        }
        setInitialized(true)
        setKeycloak(keycloak)
      })
  }, [setSession, clearSession, keycloak, setKeycloak])

  if (!keycloak || !initialized) {
    return null
  }

  return <>{children}</>
}

export default KeycloakProvider
