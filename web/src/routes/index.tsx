import { createFileRoute, useNavigate } from '@tanstack/react-router'
import { useEffect } from 'react'

export const Route = createFileRoute('/')({
  component: HomePage,
})

function HomePage() {
  const navigate = useNavigate()

  useEffect(() => {
    navigate({ to: '/chat' })
  }, [navigate])

  return null
}
