{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 56 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create fully qualified names.
We truncate at 56 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "namenode-fullname" -}}
{{- $name := default .Chart.Name .Values.Namenode.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 56 -}}
{{- end -}}

{{- define "datanode-fullname" -}}
{{- $name := default .Chart.Name .Values.Datanode.Name -}}
{{- printf "%s-%s" .Release.Name $name | trunc 56 -}}
{{- end -}}
