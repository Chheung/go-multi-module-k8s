#!/bin/bash

#############

echo "\n=================="
echo "Starting minikube"
echo "==================\n"

minikube start && \
minikube addons enable ingress && \

#############

echo "\n====================================="
echo "Build images"
echo "=====================================\n"

eval $(minikube docker-env) && \
cd app1 && docker build -t go-k8s-app1 . && \
cd ..
cd app2 && docker build -t go-k8s-app2 . && \
cd ..

#############

echo "\n====================================="
echo "Applying k8s deployments and ingress"
echo "=====================================\n"

kubectl create namespace go-multi-module-k8s && \
kubectl apply -f ./.k8s/deploy-app1.yaml -n go-multi-module-k8s && \
kubectl apply -f ./.k8s/deploy-app2.yaml -n go-multi-module-k8s && \
kubectl apply -f ./.k8s/ingress.yaml -n go-multi-module-k8s && \

#############

echo "\n================================================"
echo "Start serving externally via minikube @ 127.0.0.1"
echo "==================================================\n"

sudo minikube tunnel