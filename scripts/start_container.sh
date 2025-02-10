#!/bin/bash
set -e

# AWS ECR login
aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 430118853571.dkr.ecr.ap-south-1.amazonaws.com

# Pull the latest image from ECR
docker pull 430118853571.dkr.ecr.ap-south-1.amazonaws.com/sample-node-app:latest

# Stop and remove any running container with the same name
docker stop sample-node-app || true
docker rm sample-node-app || true

# Run the container
docker run -d -p 80:3000 --name sample-node-app 430118853571.dkr.ecr.ap-south-1.amazonaws.com/sample-node-app:latest
