{{- define "chart.labels"}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
{{- end -}}

{{- define "ledger-chart.appName" -}}
{{.Release.Name}}
{{- end -}}


{{- define "ledger-chart.vs.host" -}}
{{- printf "%s-svc.%s.svc.cluster.local" (include "ledger-chart.appName" .) .Release.Namespace -}}
{{- end -}}
