package com.springagentpoc.api.config.properties;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Getter
@Setter
@Component
@ConfigurationProperties(prefix = "prompt")
public class PromptProperties {

    private String systemPromptPath = "classpath:prompts/system-prompt.txt";
    private String evaluatorPromptPath = "classpath:prompts/evaluator-prompt.txt";

    private String fallbackPrompt = "You are FinanceGuard, a professional personal financial advisor and transaction analyst.";
}