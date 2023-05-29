#!/bin/bash

echo "====================================="
echo "Nuking...."
echo "=====================================\n"

kubectl delete all --all
sudo kubectl delete ingress --all 