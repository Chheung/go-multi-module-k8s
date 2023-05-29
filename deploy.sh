#!/bin/bash

echo "====================================="
echo "Applying k8s deployments and ingress"
echo "=====================================\n"

kubectl apply -f ./k8s/deploy-app1.yaml && \
kubectl apply -f ./k8s/deploy-app2.yaml && \
kubectl apply -f ./k8s/service-app1.yaml && \
kubectl apply -f ./k8s/service-app2.yaml && \
kubectl apply -f ./k8s/ingress.yaml && \
kubectl apply -f ./k8s/load-balancer.yaml