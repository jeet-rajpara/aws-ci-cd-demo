#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull jeet916/aws-ci-cd-app

# Run the Docker image as a container
docker run -d -p 3000:3000 jeet916/aws-ci-cd-app