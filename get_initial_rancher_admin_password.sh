#!/bin/bash

# Get the container ID of the running Rancher container
CONTAINER_ID=$(sudo docker ps --filter "ancestor=rancher/rancher" --format "{{.ID}}")

# Check if a container was found
if [ -z "$CONTAINER_ID" ]; then
    echo "No running Rancher container found."
    exit 1
fi

# Extract the Bootstrap Password from the logs
sudo docker logs "$CONTAINER_ID" 2>&1 | grep "Bootstrap Password:"

