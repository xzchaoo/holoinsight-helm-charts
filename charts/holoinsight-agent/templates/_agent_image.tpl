{{- define "agent_image" }}

{{- $agentImage := "" }}

{{/* .Values.agentImage is deprecated */}}
{{- if and (empty $agentImage) (.Values.agentImage) }}
{{- $agentImage = .Values.agentImage }}
{{- end }}

{{- if and (empty $agentImage) (.Values.agent.image) }}
{{- $agentImage = .Values.agent.image }}
{{- end }}

image: {{ $agentImage }}

{{- if contains "-SNAPSHOT" $agentImage }}
imagePullPolicy: Always
{{- else }}

{{- if .Values.image.pullPolicy }}
imagePullPolicy: {{ default .Values.image.pullPolicy }}
{{- else }}
{{/*deprecated*/}}
imagePullPolicy: {{ default "IfNotPresent" .Values.imagePullPolicy }}
{{- end }}

{{- end }}
{{- end }}