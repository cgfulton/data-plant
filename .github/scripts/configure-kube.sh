#!/bin/bash

echo "Install ingress controller"
helm repo add haproxy-ingress https://haproxy-ingress.github.io/charts
helm install haproxy-ingress haproxy-ingress/haproxy-ingress \
    --create-namespace --namespace=ingress-controller \
    --set controller.hostNetwork=true
kubectl apply -f - <<EOF
apiVersion: networking.k8s.io/v1
kind: IngressClass
metadata:
  name: haproxy
  annotations:
    ingressclass.kubernetes.io/is-default-class: 'true'
spec:
  controller: haproxy-ingress.github.io/controller
EOF