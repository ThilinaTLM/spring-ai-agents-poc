# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

```bash
# Development server (runs on port 3000)
pnpm run dev

# Build for production
pnpm run build

# Start production server
pnpm run start

# Run tests
pnpm run test

# Linting and formatting
pnpm run lint
pnpm run format
pnpm run check  # Format + lint fix

# Preview production build
pnpm run serve
```

## Package Manager

This project uses **pnpm** as the package manager. Use pnpm commands rather than npm or yarn.

## Project Architecture

This is a **Spring Agent POC web application** built with the TanStack ecosystem. It demonstrates modern React patterns and full-stack TypeScript development.

### Core Technologies

- **TanStack Start** - Full-stack React meta-framework
- **TanStack Router** - File-based routing with type safety
- **TanStack Query** - Server state management and data fetching
- **TanStack Form** - Type-safe form handling with validation
- **TanStack DB** - Client-side local data collections
- **React 19** with TypeScript
- **Vite** build system
- **Tailwind CSS 4.0** with dark mode support
- **Shadcn/ui** components (New York style)
- **Zod** for schema validation

### Routing System

- File-based routing in `src/routes/`
- Auto-generated route tree at `src/routeTree.gen.ts`
- Root layout in `src/routes/__root.tsx` contains Header and dev tools
- API routes follow `src/routes/api.*` pattern

### State Management Layers

1. **Server State**: TanStack Query for API data
2. **Client State**: TanStack DB for local collections
3. **Form State**: TanStack Form with Zod validation
4. **Router State**: TanStack Router for navigation

### Component Architecture

- UI components in `src/components/ui/` (Shadcn/ui with Radix primitives)
- Chat components in `src/components/chat/` (ChatInterface, ChatMessage, etc.)
- Provider components in `src/components/providers/` (Theme, Query)
- Common components in `src/components/common/` (shared UI elements)
- Custom hooks in `src/hooks/`
- Utilities in `src/lib/`

### Key Configuration

- **Path aliases**: `@/*` maps to `./src/*`
- **TypeScript**: Strict mode with comprehensive type safety
- **ESLint**: TanStack configuration
- **Prettier**: No semicolons, single quotes, trailing commas

### Development Patterns

- File-based routing and API routes
- Type-first development with runtime validation
- Component composition with headless UI
- Mock data generation with Faker.js for demos
- Integrated DevTools for Router and Query debugging

## Adding Shadcn Components

Add new UI components using the Shadcn CLI:

```bash
npx shadcn@latest add button
npx shadcn@latest add card
```

The project is configured with:
- **Style**: New York
- **Base color**: Zinc
- **CSS variables**: Enabled
- **Icon library**: Lucide React

# important-instruction-reminders
Do what has been asked; nothing more, nothing less.
NEVER create files unless they're absolutely necessary for achieving your goal.
ALWAYS prefer editing an existing file to creating a new one.
NEVER proactively create documentation files (*.md) or README files. Only create documentation files if explicitly requested by the User.
