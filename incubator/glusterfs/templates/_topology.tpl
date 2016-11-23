{{- define "topology" -}}
{
  "clusters": [
    {
      "nodes": [
        {{- range $index, $value := .Values.topology -}}
        {{- if $index -}},{{- end }}
        {
          "node": {
            "hostnames": {
              "manage": [
                {{- range $index, $manage := $value.node.hostnames.manage }}
                {{- if $index -}},{{- end }}
                {{ $manage | quote }}
                {{- end }}
              ],
              "storage": [
                {{- range $index, $storage := $value.node.hostnames.storage -}}
                {{- if $index -}},{{- end }}
                {{ $storage | quote }}
                {{- end }}
              ]
            },
            "zone": {{ $value.node.zone }}
          },
          "devices": [
            {{- range $index, $devices := $value.devices -}}
            {{- if $index -}},{{- end }}
            {{ $devices | quote }}
            {{- end }}
          ]
        }
        {{- end -}}
      ]
    }
  ]
}
{{- end -}}
