package com.springagentpoc.api.config.properties;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.util.List;

@Getter
@Setter
@Component
@ConfigurationProperties(prefix = "cors")
public class CorsProperties {
    private List<String> allowedOrigins = List.of("*");
    private List<String> allowedMethods = List.of("GET", "POST", "PUT", "DELETE", "OPTIONS");
    private List<String> allowedHeaders = List.of("Content-Type", "Authorization");
    private List<String> exposedHeaders = List.of("Authorization", "Content-Disposition");
    private boolean allowCredentials = true;
    private int maxAge = 3600;
}
