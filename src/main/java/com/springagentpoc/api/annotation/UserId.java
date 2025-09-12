package com.springagentpoc.api.annotation;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.MethodParameter;
import org.springframework.lang.NonNull;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.UUID;

@Target(ElementType.PARAMETER)
@Retention(RetentionPolicy.RUNTIME)
@Schema(hidden = true)
public @interface UserId {

    @Component
    class UserIdArgumentResolver implements HandlerMethodArgumentResolver {

        @Override
        public boolean supportsParameter(MethodParameter parameter) {
            return parameter.hasParameterAnnotation(UserId.class)
                    && parameter.getParameterType().equals(UUID.class);
        }

        @Override
        public Object resolveArgument(
                @NonNull MethodParameter parameter,
                ModelAndViewContainer mavContainer,
                @NonNull NativeWebRequest webRequest,
                WebDataBinderFactory binderFactory) {

            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
            if (authentication == null || !authentication.isAuthenticated()) {
                return null;
            }

            String userIdString = authentication.getName();
            if (userIdString == null) {
                return null;
            }

            return UUID.fromString(userIdString);
        }
    }

    @Configuration
    @RequiredArgsConstructor
    class WebMvcConfig implements WebMvcConfigurer {

        private final UserIdArgumentResolver userIdArgumentResolver;

        @Override
        public void addArgumentResolvers(List<HandlerMethodArgumentResolver> resolvers) {
            resolvers.add(userIdArgumentResolver);
        }
    }
}
