#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull 430118853571.dkr.ecr.ap-south-1.amazonaws.com/sample-node-app:20250210091044

# Run the Docker image as a container
docker run -d -p 3000:3000 430118853571.dkr.ecr.ap-south-1.amazonaws.com/sample-node-app:20250210091044
