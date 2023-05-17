#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=tomsharp12/udacity

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy test --image=tomsharp12/udacity:latest

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/test-9d46d7796-gq2q2 --address 0.0.0.0 8000:80
