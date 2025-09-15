# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

**Build & Test:**

```bash
./gradlew build          # Build the project
./gradlew test           # Run tests
./gradlew bootRun        # Run the Spring Boot application
./gradlew clean          # Clean build artifacts
```

**Development:**

```bash
./gradlew bootRun --args='--spring.profiles.active=local'  # Run with local profile
```

## Project Overview

This is a **Spring Agent POC** - a sophisticated Spring Boot 3.x REST API demonstrating advanced AI chat functionality with comprehensive conversation memory, transaction analysis tools, and evaluation mechanisms. The system integrates with Google Cloud Vertex AI (Gemini) and uses Keycloak for OAuth2/JWT authentication.

## Architecture Overview

### Core AI Agent System

The application implements a full-featured AI agent system with:

- **Conversation Memory**: Persistent chat history stored in PostgreSQL with intelligent context window management
- **Tool Calling**: Extensive transaction analysis tools for financial insights and data processing
- **Evaluation Loop**: Built-in AI response evaluation and improvement mechanism using the Evaluator pattern
- **Multi-turn Conversations**: Stateful conversations with memory persistence across sessions

### Key Components

**Configuration Layer (`src/main/java/com/springagentpoc/api/config/`):**

- `SecurityConfig` - OAuth2 resource server with JWT authentication, CORS configuration
- `GoogleCloudConfig` - Vertex AI client and ChatModel bean configuration
- `ToolConfig` - Spring AI tool configuration and registration
- `PromptConfig` - System prompt templates and configuration
- `OpenApiConfig` - SpringDoc OpenAPI/Swagger setup

**Properties Classes (`src/main/java/com/springagentpoc/api/config/properties/`):**

- `GoogleCloudProperties` - Handles GCP credentials (file: or base64: formats)
- `KeycloakProperties` - Keycloak OAuth2 settings
- `CorsProperties` - CORS configuration
- `PromptProperties` - AI prompt template configuration

**Data Layer (`src/main/java/com/springagentpoc/api/data/`):**

- **Entities**: `Conversation`, `Message` - Core conversation persistence
- **Embedded Types**: `MessageRole`, `ConversationStatus`, `TransactionStatus`, `TransactionType`
- **Chat Models**: `ChatMessage`, `ChatMedia`, `ChatToolCall`, `ChatToolResponse`

**Service Layer:**

- `ChatService` - Main AI agent orchestration with tool calling, memory, and evaluation
- `ChatMemoryService` - Conversation and message persistence management
- `SqlQueryService` - Database query tools for AI agent data access

**Web Layer (`src/main/java/com/springagentpoc/api/net/http/`):**

- `ChatController` - REST endpoints for conversation management and messaging
- `DocsController` - API documentation endpoints

**AI Utilities (`src/main/java/com/springagentpoc/api/util/eval/`):**

- `Evaluator` - AI response evaluation and improvement orchestration
- `EvaluationResult` - Structured evaluation results with feedback

### Technology Stack

- **Spring Boot 3.5.5** with Java 17
- **Spring AI 1.0.1** with Google Cloud Vertex AI (Gemini 2.5 Pro)
- **Spring Security** with OAuth2 resource server (JWT tokens)
- **Spring Data JPA** with PostgreSQL for conversation persistence
- **SpringDoc OpenAPI 2.8.13** for API documentation
- **Lombok** for boilerplate reduction

### AI Agent Features

**Tool Calling System:**
- Comprehensive transaction analysis tools
- SQL query execution capabilities
- Multi-step tool call orchestration with error handling

**Conversation Memory:**
- Persistent conversation storage in PostgreSQL
- Intelligent context window management
- Multi-user conversation isolation
- Message metadata and role tracking

**Evaluation & Improvement:**
- Automated response quality evaluation
- Iterative improvement based on AI feedback
- Configurable evaluation criteria and thresholds
- Max iteration limits to prevent infinite loops

### Configuration Profiles

- **Default** (`application.yaml`) - Production configuration with environment variables
- **Local** (`application-local.yaml`) - Development configuration with hardcoded local values

### Authentication

JWT-based authentication via Keycloak with role extraction. Public routes:

- `/docs/**` (API documentation)
- `GET /actuator/health` (Health check)

Roles are extracted from the `roles` JWT claim with `ROLE_` prefix.

### Required Environment Variables

```
database.uri
database.username
database.password
keycloak.server-url
keycloak.realm
keycloak.client-id
keycloak.client-secret
google.cloud.project-id
google.cloud.location
google.cloud.credentials
```

## Key Directory Structure

```
src/main/java/com/springagentpoc/api/
├── config/              # Spring configuration and properties
│   ├── properties/      # Configuration property classes
│   ├── GoogleCloudConfig.java
│   ├── SecurityConfig.java
│   ├── ToolConfig.java
│   └── PromptConfig.java
├── data/               # Data models and persistence
│   ├── entity/         # JPA entities (Conversation, Message)
│   └── embedded/       # Embedded types and enums
├── service/            # Business logic layer
│   ├── ChatService.java           # Main AI agent orchestration
│   ├── ChatMemoryService.java     # Conversation persistence
│   └── SqlQueryService.java       # Database query tools
├── net/                # Web layer
│   ├── http/           # REST controllers
│   └── adviser/        # Exception handling
├── util/               # Utilities
│   └── eval/           # AI evaluation framework
└── annotation/         # Custom annotations (@UserId)
```

## Development Workflow

### Working with AI Agent Features

**Conversation Management:**
- Conversations are automatically created if they don't exist
- Messages are persisted with role, content, and metadata
- Context window is managed automatically based on token limits

**Tool Development:**
- Tools are registered in `ToolConfig` using Spring AI's tool callback system
- Tools receive structured parameters and return formatted results
- Error handling is built into the tool execution pipeline

**Evaluation Customization:**
- Modify evaluation criteria in the `Evaluator` class
- Adjust max iterations and improvement thresholds
- Custom evaluation prompts can be configured via properties

### Development Notes

- Google Cloud credentials support both `file:/path/to/creds.json` and `base64:encodedContent` formats
- JPA is configured with `ddl-auto: update` for automatic schema management
- The system uses Gemini 2.5 Pro with configurable temperature and token limits
- Tool calling is enabled with internal execution disabled for custom handling
- Conversation memory implements intelligent context window management
- The evaluation system provides iterative response improvement with feedback loops