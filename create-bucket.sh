#!/bin/bash

# Wait for the MinIO server to start
sleep 10

# Download the MinIO client
# wget https://dl.min.io/client/mc/release/linux-amd64/mc

# Make the MinIO client executable
# chmod +x mc

# Add the MinIO server as an alias
mc alias set minio http://localhost:9000 minioadmin minioadmin

# Create the bucket
mc mb minio/my-bucket