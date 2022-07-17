#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=chibkay/dev

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy dev --image=chibkay/dockerhub:dev

# Step 3:
# List kubernetes pods
kubectl get pods 

# Step 4:
# Forward the container port to a host
kubectl port-forward dev-7f4cfbc774-27j6t 8000:80
