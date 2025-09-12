package com.springagentpoc.api.config;

import com.springagentpoc.api.config.properties.KeycloakProperties;
import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.security.OAuthFlow;
import io.swagger.v3.oas.models.security.OAuthFlows;
import io.swagger.v3.oas.models.security.Scopes;
import io.swagger.v3.oas.models.security.SecurityScheme;
import io.swagger.v3.oas.models.servers.Server;
import jakarta.servlet.http.HttpServletRequest;
import org.springdoc.core.customizers.OpenApiCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Configuration
@OpenAPIDefinition(
        info = @Info(title = "SpringAgentic PoC API", version = "0.1.0", description = "API for SpringAgentic PoC"),
        security = {
                @SecurityRequirement(
                        name = "oauth2",
                        scopes = {"openid", "profile", "email", "roles"})
        })
public class OpenApiConfig {

    @Bean
    public OpenAPI customOpenAPI(KeycloakProperties keycloakProperties) {
        Scopes scopes = new Scopes()
                .addString("openid", "OpenID connect scope")
                .addString("profile", "Profile scope")
                .addString("email", "Email scope")
                .addString("roles", "Roles scope");

        OAuthFlow authorizationCodeFlow = new OAuthFlow()
                .authorizationUrl(keycloakProperties.getAuthorizationUrl())
                .tokenUrl(keycloakProperties.getTokenUrl())
                .scopes(scopes);

        OAuthFlows flows = new OAuthFlows().authorizationCode(authorizationCodeFlow);

        SecurityScheme securityScheme =
                new SecurityScheme().type(SecurityScheme.Type.OAUTH2).flows(flows);

        Components components = new Components().addSecuritySchemes("oauth2", securityScheme);

        return new OpenAPI().components(components);
    }

    @Bean
    public OpenApiCustomizer openApiCustomizer() {
        return openApi -> {
            ServletRequestAttributes attributes =
                    (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            if (attributes != null) {
                HttpServletRequest request = attributes.getRequest();
                String scheme = getScheme(request);
                String serverName = request.getServerName();
                String serverPort = (request.getServerPort() != 80 && request.getServerPort() != 443)
                        ? ":" + request.getServerPort()
                        : "";
                String serverUrl = scheme + "://" + serverName + serverPort;

                openApi.getServers().clear();
                openApi.addServersItem(new Server().url(serverUrl));
            }
        };
    }

    private String getScheme(HttpServletRequest request) {
        String forwardedProto = request.getHeader("X-Forwarded-Proto");
        if (forwardedProto != null) {
            return forwardedProto;
        }

        String forwardedScheme = request.getHeader("X-Forwarded-Scheme");
        if (forwardedScheme != null) {
            return forwardedScheme;
        }

        return request.getScheme();
    }
}
