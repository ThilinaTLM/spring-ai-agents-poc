package com.springagentpoc.api.net.http;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
@RequestMapping("/docs")
public class DocsController {

    @GetMapping("/ui")
    public void renderHtml(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String title = "SpringAgentic - API Reference";
        String scheme = getScheme(request);
        String serverName = request.getServerName();
        String serverPort =
                (request.getServerPort() != 80 && request.getServerPort() != 443) ? ":" + request.getServerPort() : "";
        String specUrl = scheme + "://" + serverName + serverPort + "/docs/api";
        String html =
                """
                        <!DOCTYPE html>
                        <html>
                          <head>
                            <title>%s</title>
                            <meta charset="utf-8" />
                            <meta name="viewport" content="width=device-width, initial-scale=1" />
                          </head>
                          <body>
                            <script id="api-reference" data-url="%s"></script>
                            <script>
                              var configuration = {
                                theme: "purple",
                              };
                              document.getElementById("api-reference").dataset.configuration =
                                JSON.stringify(configuration);
                            </script>
                            <script src="https://cdn.jsdelivr.net/npm/@scalar/api-reference"></script>
                          </body>
                        </html>
                        """
                        .formatted(title, specUrl);
        response.setContentType("text/html");
        response.getWriter().write(html);
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
