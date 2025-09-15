import { useAuthActions, useIsAuthenticated } from '@/stores/authStore'
import { useEffect } from 'react'

type ProtectedProps = {
  children: React.ReactNode
}

const Protected: React.FC<ProtectedProps> = ({ children }) => {
  const { login } = useAuthActions()
  const isAuthenticated = useIsAuthenticated()

  useEffect(() => {
    if (!isAuthenticated) {
      login()
    }
  }, [isAuthenticated, login])

  if (!isAuthenticated) {
    return null
  }

  return children
}

export default Protected
