import { StrictMode } from 'react'
import ReactDOM from 'react-dom/client'
import { createRouter, RouterProvider } from '@tanstack/react-router'
import Providers from '@/components/providers/Providers'

import { routeTree } from './routeTree.gen'
const router = createRouter({ routeTree })

const rootElement = document.getElementById('root')!
if (!rootElement.innerHTML) {
  const root = ReactDOM.createRoot(rootElement)
  root.render(
    <StrictMode>
      <Providers>
        <RouterProvider router={router} />
      </Providers>
    </StrictMode>,
  )
}

declare module '@tanstack/react-router' {
  interface Register {
    router: typeof router
  }
}
