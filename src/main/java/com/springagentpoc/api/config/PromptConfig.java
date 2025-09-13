package com.springagentpoc.api.config;

import com.springagentpoc.api.config.properties.PromptProperties;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ResourceLoader;

import java.io.IOException;
import java.nio.charset.StandardCharsets;

@Configuration
@RequiredArgsConstructor
@Slf4j
public class PromptConfig {

    private final ResourceLoader resourceLoader;
    private final PromptProperties promptProperties;

    @Bean
    public String systemPrompt() {
        try {
            var resource = resourceLoader.getResource(promptProperties.getSystemPromptPath());
            String prompt = resource.getContentAsString(StandardCharsets.UTF_8);
            log.info("Successfully loaded system prompt from: {}", promptProperties.getSystemPromptPath());
            return prompt;
        } catch (IOException e) {
            log.error("Failed to load system prompt from file: {}, falling back to default",
                    promptProperties.getSystemPromptPath(), e);
            return promptProperties.getFallbackPrompt();
        }
    }
}