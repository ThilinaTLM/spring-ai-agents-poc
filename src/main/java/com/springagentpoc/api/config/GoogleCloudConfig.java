package com.springagentpoc.api.config;

import com.google.cloud.vertexai.VertexAI;
import com.springagentpoc.api.config.properties.GoogleCloudProperties;
import lombok.RequiredArgsConstructor;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.ai.vertexai.gemini.VertexAiGeminiChatModel;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@RequiredArgsConstructor
public class GoogleCloudConfig {

    private final GoogleCloudProperties gcpProperties;

    @Bean
    public VertexAI vertexAI() {
        return new VertexAI.Builder()
                .setProjectId(gcpProperties.getProjectId())
                .setLocation(gcpProperties.getLocation())
                .setCredentials(gcpProperties.getCredentials())
                .build();
    }

    @Bean
    public ChatModel geminiChatModel() {
        return VertexAiGeminiChatModel.builder().vertexAI(vertexAI()).build();
    }
}
