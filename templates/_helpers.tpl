{{- define "ingress-nginx.ipaddresspool.address" -}}
{{- printf "%s/32" (index .Values "ingress-nginx" "controller" "service" "annotations" "metallb.universe.tf/loadBalancerIPs") -}}
{{- end -}}