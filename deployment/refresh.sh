#!/bin/bash

# Stop and remove old container
docker stop myapp || true
docker rm myapp || true

# Pull latest image
docker pull wesleymorah/ceg3120f25-wesleymorah:latest

# Run new container
docker run -d -p 80:80 --restart unless-stopped --name myapp wesleymorah/ceg3120f25-wesleymorah:latest

# Clean up old images (optional)
docker image prune -f

echo "Container refresh completed at $(date)"
