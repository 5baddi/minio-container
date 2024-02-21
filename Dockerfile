# Use the official MinIO image as the base
FROM minio/minio

COPY --from=docker.io/minio/mc:latest /usr/bin/mc /usr/bin/mc 

# Copy the script to the image
COPY create-bucket.sh /create-bucket.sh

# Make the script executable
RUN chmod +x /create-bucket.sh

# Set the entrypoint to run the MinIO server and the script
ENTRYPOINT ["sh", "-c", "/create-bucket.sh & minio server /data"]