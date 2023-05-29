#!/bin/bash

#############

echo "\n=================="
echo "Starting minikube"
echo "==================\n"

minikube start

#############

echo "\n====================================="
echo "Build images"
echo "=====================================\n"

eval $(minikube docker-env)
cd app1 && docker build -t go-k8s-app1 .
cd ..
cd app2 && docker build -t go-k8s-app2 .
cd ..

#############

echo "\n====================================="
echo "Applying k8s deployments and ingress"
echo "=====================================\n"

kubectl apply -f ./.k8s/deploy-app1.yaml
kubectl apply -f ./.k8s/deploy-app2.yaml
kubectl apply -f ./.k8s/ingress.yaml

#############

# echo "\n====================================="
# echo "Start serving externally via minikube"
# echo "=====================================\n"

# minikube service go-k8s-lb