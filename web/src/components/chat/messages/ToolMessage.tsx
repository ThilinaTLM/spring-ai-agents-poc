import { ChatMessageDto, ChatToolResponse } from '@/net/api/types/chat'
import { CheckCircle, Clock, Database, Settings, XCircle } from 'lucide-react'

interface ToolMessageProps {
  message: ChatMessageDto
}

interface ParsedToolResponse {
  success?: boolean
  data?: any[]
  rowCount?: number
  executedAt?: number[]
  error?: string
}

function parseToolResponseData(responseData: string): ParsedToolResponse {
  try {
    return JSON.parse(responseData)
  } catch {
    return {}
  }
}

function formatExecutionTime(executedAt?: number[]): string {
  if (!executedAt || executedAt.length < 6) return ''

  const [year, month, day, hour, minute, second, nano] = executedAt
  const date = new Date(
    year,
    month - 1,
    day,
    hour,
    minute,
    second,
    Math.floor(nano / 1000000),
  )

  return date.toLocaleTimeString([], {
    hour: '2-digit',
    minute: '2-digit',
    second: '2-digit',
  })
}

function ToolResponseDisplay({
  toolResponse,
}: {
  toolResponse: ChatToolResponse
}) {
  const parsed = parseToolResponseData(toolResponse.responseData)
  const hasTableData =
    parsed.data && Array.isArray(parsed.data) && parsed.data.length > 0

  return (
    <div className="border border-accent/30 rounded-lg p-3 bg-accent/10">
      <div className="flex items-center justify-between mb-2">
        <div className="flex items-center gap-2">
          <Database className="size-4 text-muted-foreground" />
          <span className="font-medium text-sm text-foreground">
            {toolResponse.name}
          </span>
        </div>

        <div className="pl-2 flex items-center gap-2">
          {parsed.success !== undefined &&
            (parsed.success ? (
              <CheckCircle className="size-3 text-green-500" />
            ) : (
              <XCircle className="size-3 text-red-500" />
            ))}
          {parsed.executedAt && (
            <div className="flex items-center gap-1 text-xs text-muted-foreground">
              <Clock className="size-3" />
              <span>{formatExecutionTime(parsed.executedAt)}</span>
            </div>
          )}
        </div>
      </div>

      {parsed.error && (
        <div className="text-sm text-red-600 bg-red-50 dark:bg-red-900/20 p-2 rounded mb-2">
          {parsed.error}
        </div>
      )}

      {hasTableData && (
        <div className="mb-2">
          <div className="text-xs text-muted-foreground mb-2">
            Results ({parsed.rowCount || parsed.data?.length} rows):
          </div>
          <div className="overflow-x-auto">
            <table className="w-full text-xs border-collapse">
              <thead>
                <tr className="bg-muted/50">
                  {Object.keys(parsed.data?.[0]).map((key) => (
                    <th
                      key={key}
                      className="border border-border/50 px-2 py-1 text-left font-medium text-muted-foreground"
                    >
                      {key}
                    </th>
                  ))}
                </tr>
              </thead>
              <tbody>
                {parsed.data?.map((row, index) => (
                  <tr key={index} className="even:bg-muted/20">
                    {Object.values(row).map((value, colIndex) => (
                      <td
                        key={colIndex}
                        className="border border-border/50 px-2 py-1 text-foreground"
                      >
                        {String(value)}
                      </td>
                    ))}
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {!hasTableData && parsed.data && (
        <div className="text-sm">
          <pre className="bg-muted/50 p-2 rounded text-xs overflow-x-auto">
            {JSON.stringify(parsed.data, null, 2)}
          </pre>
        </div>
      )}

      {!hasTableData && !parsed.data && toolResponse.responseData && (
        <div className="text-sm">
          <pre className="bg-muted/50 p-2 rounded text-xs overflow-x-auto">
            {toolResponse.responseData}
          </pre>
        </div>
      )}
    </div>
  )
}

export function ToolMessage({ message }: ToolMessageProps) {
  const hasToolResponses =
    message.toolResponses && message.toolResponses.length > 0

  return (
    <div className="flex gap-3 px-4 py-3 md:px-6 md:py-4 group/message animate-in fade-in slide-in-from-bottom-2 duration-300">
      <div className="size-8 md:size-9 shrink-0 mr-2 flex items-center justify-center bg-accent text-accent-foreground rounded-full">
        <Settings className="size-4" />
      </div>

      <div className="flex flex-col max-w-[85%] md:max-w-[75%] lg:max-w-[65%] items-start">
        <div className="flex items-center gap-2 mb-1 px-1">
          <span className="font-semibold text-sm text-foreground">
            Tool Execution
          </span>
        </div>

        <div
          className="relative rounded-2xl px-4 py-3 max-w-full shadow-sm transition-all duration-200 hover:shadow-md focus-within:ring-2 focus-within:ring-primary/20 bg-accent/20 border border-accent/30 rounded-bl-md"
          role="article"
          aria-label="Tool execution results"
          tabIndex={0}
        >
          {/* Tool Responses */}
          {hasToolResponses ? (
            <div className="space-y-3">
              {message?.toolResponses?.map((toolResponse, index) => (
                <ToolResponseDisplay key={index} toolResponse={toolResponse} />
              ))}
            </div>
          ) : (
            <div className="prose prose-sm max-w-none dark:prose-invert">
              <p className="whitespace-pre-wrap leading-relaxed m-0 text-sm md:text-base font-mono text-muted-foreground">
                {message.content || 'Tool execution completed'}
              </p>
            </div>
          )}

          {/* Media content if present */}
          {message.media && message.media.length > 0 && (
            <div className="mt-3 space-y-2">
              <div className="text-xs text-muted-foreground font-medium">
                Media:
              </div>
              {message.media.map((media, index) => (
                <div key={index} className="bg-muted/30 rounded-lg p-2 border">
                  <div className="text-xs font-medium text-foreground">
                    {media.mimeType}
                  </div>
                  <div className="text-xs text-muted-foreground mt-1">
                    {media.metadata &&
                      Object.keys(media.metadata).length > 0 && (
                        <pre className="text-xs">
                          {JSON.stringify(media.metadata, null, 2)}
                        </pre>
                      )}
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>
      </div>
    </div>
  )
}
