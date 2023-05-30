#!/bin/bash

echo "====================================="
echo "Nuking...."
echo "=====================================\n"

kubectl delete all --all -n go-multi-module-k8s && \
kubectl delete ingress go-k8s-ingress -n go-multi-module-k8s && \
sudo minikube stop