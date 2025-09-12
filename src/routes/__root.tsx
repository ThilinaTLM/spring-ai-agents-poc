import {
  HeadContent,
  Scripts,
  createRootRouteWithContext,
  Link,
} from '@tanstack/react-router'
import { Button } from '@/components/ui/button'
import appCss from '../styles.css?url'

export const Route = createRootRouteWithContext()({
  head: () => ({
    meta: [
      {
        charSet: 'utf-8',
      },
      {
        name: 'viewport',
        content: 'width=device-width, initial-scale=1',
      },
      {
        title: 'SpringAgentic PoC',
      },
    ],
    links: [
      {
        rel: 'stylesheet',
        href: appCss,
      },
    ],
  }),

  notFoundComponent: () => {
    return (
      <div className="min-h-screen flex items-center justify-center bg-background">
        <div className="text-center">
          <h1 className="text-4xl font-bold text-foreground mb-4">404</h1>
          <p className="text-lg text-muted-foreground mb-8">Page not found</p>
          <Button asChild>
            <Link to="/">Go Home</Link>
          </Button>
        </div>
      </div>
    )
  },

  shellComponent: RootDocument,
})

function RootDocument({ children }: { children: React.ReactNode }) {
  return (
    <html lang="en">
      <head>
        <HeadContent />
      </head>
      <body>
        {children}
        <Scripts />
      </body>
    </html>
  )
}
