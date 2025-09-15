import { ChatMessageDto } from '@/net/api/types/chat'
import { UserMessage } from './messages/UserMessage'
import { ChatMessage } from './ChatMessage'
import {
  Accordion,
  AccordionContent,
  AccordionItem,
  AccordionTrigger,
} from '@/components/ui/accordion'
import { AlertTriangle, Settings, Sparkles } from 'lucide-react'
import { GroupedMessage } from '@/utils/groupChatMessages'
import Markdown from 'react-markdown'

interface GroupedChatMessageProps {
  group: GroupedMessage
}

export function GroupedChatMessage({ group }: GroupedChatMessageProps) {
  const { userMessage, intermediateMessages, finalAssistantMessage } = group
  const hasIntermediateMessages = intermediateMessages.length > 0

  return (
    <div className="space-y-1">
      {/* Render user message */}
      <div className="animate-in fade-in slide-in-from-bottom-2 duration-500">
        <UserMessage message={userMessage} />
      </div>

      {/* Render the final assistant message if available */}
      {finalAssistantMessage && (
        <div className="animate-in fade-in slide-in-from-bottom-2 duration-500">
          <div className="flex gap-3 px-4 py-3 md:px-6 md:py-4 group/message">
            <div className="size-8 md:size-9 shrink-0 transition-transform duration-200 hover:scale-105 mr-2 flex items-center justify-center bg-primary text-primary-foreground rounded-full shadow-lg">
              <span className="text-xs font-semibold">AI</span>
            </div>

            <div className="flex flex-col max-w-[85%] md:max-w-[75%] lg:max-w-[65%] items-start w-full">
              <div className="flex items-center gap-2 mb-1 px-1">
                <span className="font-semibold text-sm text-foreground">
                  Assistant
                </span>
              </div>

              <div className="w-full">
                {/* Main assistant response */}
                <div
                  className="relative rounded-2xl px-4 py-3 shadow-sm transition-all duration-200 hover:shadow-md focus-within:ring-2 focus-within:ring-primary/20 bg-card border text-foreground/80 border-border rounded-bl-md"
                  role="article"
                  aria-label="Message from assistant"
                  tabIndex={0}
                >
                  {/* Intermediate messages accordion - at the top */}
                  {hasIntermediateMessages && (
                    <div className="mb-3">
                      <Accordion type="single" collapsible className="w-full">
                        <AccordionItem
                          value="intermediate-steps"
                          className="border-none"
                        >
                          <AccordionTrigger className="px-2 py-1 text-xs text-muted-foreground hover:text-foreground rounded-md hover:bg-muted/30 transition-colors [&>svg]:size-3">
                            <div className="flex items-center gap-2">
                              <Sparkles className="size-3" />
                              <span>
                                Show reasoning steps (
                                {intermediateMessages.length})
                              </span>
                            </div>
                          </AccordionTrigger>
                          <AccordionContent className="px-0 pb-2">
                            <div className="space-y-2 border-l-2 border-muted ml-2 pl-3 mt-2">
                              {intermediateMessages.map((message, index) => (
                                <div
                                  key={`intermediate-${index}`}
                                  className="opacity-80 scale-95 origin-left"
                                >
                                  <IntermediateMessageComponent
                                    message={message}
                                  />
                                </div>
                              ))}
                            </div>
                          </AccordionContent>
                        </AccordionItem>
                      </Accordion>
                    </div>
                  )}

                  {/* Main content */}
                  <div className="prose prose-sm max-w-none dark:prose-invert">
                    <Markdown>{finalAssistantMessage.content}</Markdown>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      )}

      {/* Fallback: render intermediate messages normally if no final assistant message */}
      {!finalAssistantMessage && hasIntermediateMessages && (
        <div className="space-y-1">
          {intermediateMessages.map((message, index) => (
            <div
              key={`fallback-${index}`}
              className="animate-in fade-in slide-in-from-bottom-2 duration-500"
              style={{ animationDelay: `${index * 100}ms` }}
            >
              <ChatMessage message={message} />
            </div>
          ))}
        </div>
      )}
    </div>
  )
}

function IntermediateMessageComponent({
  message,
}: {
  message: ChatMessageDto
}) {
  // Render a simplified version of intermediate messages
  const isEvaluatorMessage =
    message.role === 'USER' && message.metadata?.source === 'evaluator'
  const isToolMessage = message.role === 'TOOL'
  const isAssistantWithTools =
    message.role === 'ASSISTANT' && (message.toolCalls?.length || 0) > 0

  if (isEvaluatorMessage) {
    return (
      <div className="text-xs bg-amber-50 dark:bg-amber-950/20 border border-amber-200 dark:border-amber-800/30 rounded-lg p-3">
        <div className="flex items-center gap-2 mb-2">
          <AlertTriangle className="size-3 text-amber-600" />
          <span className="font-medium text-amber-900 dark:text-amber-100">
            Evaluator Feedback
          </span>
        </div>
        <p className="text-amber-800 dark:text-amber-200 whitespace-pre-wrap leading-relaxed">
          {message.content}
        </p>
      </div>
    )
  }

  if (isToolMessage) {
    return (
      <div className="text-xs bg-accent/20 border border-accent/30 rounded-lg p-3">
        <div className="flex items-center gap-2 mb-2">
          <Settings className="size-3 text-muted-foreground" />
          <span className="font-medium text-foreground">Tool Execution</span>
        </div>
        {message.toolResponses && message.toolResponses.length > 0 ? (
          <div className="space-y-2">
            {message.toolResponses.map((response, index) => (
              <div key={index} className="text-xs">
                <div className="font-medium mb-1">{response.name}</div>
                <div className="text-muted-foreground bg-muted/30 p-2 rounded text-xs overflow-x-auto">
                  <pre className="whitespace-pre-wrap line-clamp-[50]">
                    {response.responseData}
                  </pre>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <p className="text-muted-foreground">
            {message.content || 'Tool execution completed'}
          </p>
        )}
      </div>
    )
  }

  if (isAssistantWithTools) {
    return (
      <div className="text-xs bg-blue-50 dark:bg-blue-950/20 border border-blue-200 dark:border-blue-800/30 rounded-lg p-3">
        <div className="flex items-center gap-2 mb-2">
          <Sparkles className="size-3 text-blue-600" />
          <span className="font-medium text-blue-900 dark:text-blue-100">
            AI Reasoning
          </span>
        </div>
        <p className="text-blue-800 dark:text-blue-200 whitespace-pre-wrap leading-relaxed mb-2">
          {message.content}
        </p>
        {message.toolCalls && message.toolCalls.length > 0 && (
          <div className="space-y-1">
            <div className="font-medium text-blue-900 dark:text-blue-100">
              Tool Calls:
            </div>
            {message.toolCalls.map((toolCall, index) => (
              <div
                key={index}
                className="bg-blue-100/50 dark:bg-blue-900/50 rounded p-2"
              >
                <div className="font-medium">{toolCall.name}</div>
                <div className="text-blue-700 dark:text-blue-300 font-mono text-xs">
                  {toolCall.arguments}
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    )
  }

  // Fallback for other message types
  return (
    <div className="text-xs bg-muted/30 border border-muted rounded-lg p-3">
      <p className="text-muted-foreground whitespace-pre-wrap">
        {message.content}
      </p>
    </div>
  )
}
