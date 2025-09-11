package com.springagentpoc.api.config.properties;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Getter
@Setter
@Component
@ConfigurationProperties(prefix = "keycloak")
public class KeycloakProperties {
    private String serverUrl;
    private String realm;
    private String clientId;
    private String clientSecret;

    public String getAuthorizationUrl() {
        return String.format("%s/realms/%s/protocol/openid-connect/auth", serverUrl, realm);
    }

    public String getTokenUrl() {
        return String.format("%s/realms/%s/protocol/openid-connect/token", serverUrl, realm);
    }
}
