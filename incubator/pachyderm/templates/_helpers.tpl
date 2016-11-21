{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 -}}
{{- end -}}

{{- define "init.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name "init" | trunc 63 -}}
{{- end -}}

{{- define "etcd.fullname" -}}
{{- printf "%s-%s" .Release.Name "etcd" | trunc 63 -}}
{{- end -}}

{{- define "reg.fullname" -}}
{{- printf "%s-%s" .Release.Name "reg" | trunc 63 -}}
{{- end -}}

{{- define "rethink.fullname" -}}
{{- printf "%s-%s" .Release.Name "rethink" | trunc 63 -}}
{{- end -}}

{{- define "rethinkpv.fullname" -}}
{{- printf "%s-%s" .Release.Name "rethink-pv" | trunc 63 -}}
{{- end -}}

{{- define "rethinkpvc.fullname" -}}
{{- printf "%s-%s" .Release.Name "rethink-pvc" | trunc 63 -}}
{{- end -}}
