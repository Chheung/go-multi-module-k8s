#!/bin/bash

echo "====================================="
echo "Nuking...."
echo "=====================================\n"

kubectl delete all -n go-multi-module-k8s
sudo minikube stop