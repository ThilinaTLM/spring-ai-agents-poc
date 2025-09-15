import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import { Toaster } from '@/components/ui/sonner'
import { ThemeProvider } from './ThemeProvider'
import { CheckCircle, Loader2, XCircle } from 'lucide-react'
import KeycloakProvider from '@/components/providers/KeycloakProvider.tsx'
import { TanstackDevtools } from '@tanstack/react-devtools'
import { TanStackRouterDevtoolsPanel } from '@tanstack/react-router-devtools'
import TanStackQueryDevtools from './QueryDevTools'
import Protected from '@/components/common/Protected'

const queryClient = new QueryClient()

const Providers: React.FC<{ children: React.ReactNode }> = ({ children }) => {
  return (
    <ThemeProvider defaultTheme="dark" storageKey="theme">
      <QueryClientProvider client={queryClient}>
        <KeycloakProvider>
          <Protected>{children}</Protected>
        </KeycloakProvider>
      </QueryClientProvider>
      <Toaster
        position="bottom-right"
        richColors
        icons={{
          success: <CheckCircle className="w-4 h-4" />,
          error: <XCircle className="w-4 h-4" />,
          loading: <Loader2 className="w-4 h-4" />,
        }}
      />
      <TanstackDevtools
        config={{
          position: 'bottom-left',
        }}
        plugins={[
          {
            name: 'Tanstack Router',
            render: <TanStackRouterDevtoolsPanel />,
          },
          TanStackQueryDevtools,
        ]}
      />
    </ThemeProvider>
  )
}

export default Providers
