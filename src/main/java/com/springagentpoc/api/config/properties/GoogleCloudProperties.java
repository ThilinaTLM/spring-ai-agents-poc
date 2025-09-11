package com.springagentpoc.api.config.properties;

import com.google.auth.oauth2.GoogleCredentials;
import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Base64;

@Getter
@Setter
@Component
@ConfigurationProperties(prefix = "google.cloud")
public class GoogleCloudProperties {

    private String projectId;

    private String location;

    private String credentials;

    private ChatModelOptions chat;

    private InputStream getCredentialsInputStream() {
        if (credentials == null || credentials.isEmpty()) {
            throw new IllegalStateException("Google Cloud service account base64 is not configured");
        }

        if (credentials.startsWith("file:")) {
            try {
                String filePath = credentials.substring(5);
                return new FileInputStream(filePath);
            } catch (Exception e) {
                throw new RuntimeException("Failed to read credentials file", e);
            }
        } else if (credentials.startsWith("base64:")) {
            String base64Content = credentials.substring(7);
            byte[] decodedBytes = Base64.getDecoder().decode(base64Content);
            return new ByteArrayInputStream(decodedBytes);
        }

        throw new IllegalArgumentException("Credentials must start with either 'file:' or 'base64:'");
    }

    public GoogleCredentials getCredentials() {
        try {
            return GoogleCredentials.fromStream(getCredentialsInputStream());
        } catch (Exception e) {
            throw new RuntimeException("Failed to load Google Cloud credentials", e);
        }
    }

    @Getter
    @Setter
    public static class ChatModelOptions {
        private String modelName;
        private String temperature;
        private String maxTokens;
    }
}
