
{{/*
Expand to the namespace installs into.
*/}}
{{- define "data-analysis.namespace" -}}
{{- default .Release.Namespace .Values.namespace.name -}}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "data-analysis.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "data-analysis.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "data-analysis.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "data-analysis.labels" -}}
helm.sh/chart: {{ include "data-analysis.chart" . }}
app.kubernetes.io/name: {{ include "data-analysis.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{ include "data-analysis.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "data-analysis.selectorLabels" -}}
app: {{ include "data-analysis.name" . }}
version: {{ .Chart.Version }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "data-analysis.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "data-analysis.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}