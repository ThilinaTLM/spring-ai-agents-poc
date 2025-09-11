import { Moon, Sun } from 'lucide-react'

import { Button } from '@/components/ui/button'
import { useTheme } from '@/components/providers/ThemeProvider'

export function ThemeToggle() {
  const { theme, setTheme } = useTheme()

  const toggleTheme = () => {
    setTheme(theme === 'light' ? 'dark' : 'light')
  }

  const getIcon = () => {
    return theme === 'light' ? (
      <Sun className="size-4" />
    ) : (
      <Moon className="size-4" />
    )
  }

  const getTitle = () => {
    return theme === 'light' ? 'Switch to dark mode' : 'Switch to light mode'
  }

  return (
    <Button
      variant="ghost"
      size="icon"
      onClick={toggleTheme}
      title={getTitle()}
      className="size-9 bg-accent/30 hover:bg-accent/70 text-foreground"
    >
      {getIcon()}
      <span className="sr-only">Toggle theme</span>
    </Button>
  )
}
