import { createFileRoute } from '@tanstack/react-router'

export const Route = createFileRoute('/')({
  component: HomePage,
})

function HomePage() {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-50">
      <div className="text-center">
        <h1 className="text-4xl font-bold text-gray-900 mb-4">Hello World</h1>
        <p className="text-lg text-gray-600">
          Welcome to your clean TanStack Start application!
        </p>
      </div>
    </div>
  )
}
