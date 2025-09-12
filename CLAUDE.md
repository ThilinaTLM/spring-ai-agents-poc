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

## Architecture Overview

This is a Spring Boot 3.x REST API that integrates with Google Cloud Vertex AI (Gemini) for chat functionality and uses
Keycloak for OAuth2/JWT authentication.

### Key Components

**Configuration Layer (`src/main/java/com/springagentpoc/api/config/`):**

- `SecurityConfig` - OAuth2 resource server with JWT authentication, CORS configuration
- `GoogleCloudConfig` - Vertex AI client and ChatModel bean configuration
- `OpenApiConfig` - SpringDoc OpenAPI/Swagger setup

**Properties Classes (`src/main/java/com/springagentpoc/api/config/properties/`):**

- `GoogleCloudProperties` - Handles GCP credentials (file: or base64: formats)
- `KeycloakProperties` - Keycloak OAuth2 settings
- `CorsProperties` - CORS configuration

**Service Layer:**

- `ChatService` - Main business logic for AI chat functionality using Spring AI ChatModel

**Web Layer (`src/main/java/com/springagentpoc/api/net/http/`):**

- `ChatController` - REST endpoints for chat operations (currently skeleton)
- `DocsController` - API documentation endpoints

**Exception Handling (`src/main/java/com/springagentpoc/api/models/exception/` &
`src/main/java/com/springagentpoc/api/net/adviser/`):**

- Custom exception classes and global exception advisors

### Technology Stack

- Spring Boot 3.5.5 with Java 17
- Spring AI 1.0.1 with Vertex AI Gemini integration
- Spring Security with OAuth2 resource server (JWT)
- JPA with PostgreSQL
- SpringDoc OpenAPI 2.8.13
- Lombok for boilerplate reduction

### Configuration Profiles

- **Default** (`application.yaml`) - Production-ready configuration with environment variable placeholders
- **Local** (`application-local.yaml`) - Development configuration with hardcoded values for local PostgreSQL and
  Keycloak

### Authentication

The API uses JWT tokens from Keycloak. Public routes include:

- `/docs/**` (API documentation)
- `/ws/**` (WebSocket endpoints)
- `GET /actuator/health` (Health check)

### Environment Variables Required

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

## Development Notes

- Google Cloud credentials can be provided as either `file:/path/to/credentials.json` or `base64:encodedJsonContent`
- The ChatService is currently a skeleton - chat endpoints and business logic need implementation
- JPA is configured with `ddl-auto: update` for automatic schema updates
- JWT authentication extracts roles from the `roles` claim and prefixes them with `ROLE_`