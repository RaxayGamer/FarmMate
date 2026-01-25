# FarmMate Docker Deployment Guide

## Quick Start

### Build the Docker image:
```bash
docker build -t farmmate:latest .
```

### Run the container:
```bash
docker run -d -p 5000:5000 --name farmmate-app farmmate:latest
```

### Access the application:
- **Backend API**: http://localhost:5000/api/health
- **Frontend**: http://localhost:5000 (or open frontend/templates/index.html in browser and set API to http://localhost:5000/api)

## Advanced Usage

### Run with environment variables:
```bash
docker run -d -p 5000:5000 \
  -e groq_api_key=your_groq_api_key \
  -e WEATHER_API_KEY=your_weather_api_key \
  --name farmmate-app \
  farmmate:latest
```

### Mount volume for model files (if needed):
```bash
docker run -d -p 5000:5000 \
  -v $(pwd)/backend/models:/app/backend/models \
  --name farmmate-app \
  farmmate:latest
```

### View logs:
```bash
docker logs -f farmmate-app
```

### Stop the container:
```bash
docker stop farmmate-app
```

### Remove the container:
```bash
docker rm farmmate-app
```

### Remove the image:
```bash
docker rmi farmmate:latest
```

## Container Management

### Restart container:
```bash
docker restart farmmate-app
```

### Execute commands inside container:
```bash
docker exec -it farmmate-app bash
```

### Check container status:
```bash
docker ps -a | grep farmmate
```

## Troubleshooting

### Check if container is healthy:
```bash
docker inspect --format='{{.State.Health.Status}}' farmmate-app
```

### View resource usage:
```bash
docker stats farmmate-app
```

### Rebuild without cache:
```bash
docker build --no-cache -t farmmate:latest .
```

## Production Deployment

For production, consider using docker-compose or Kubernetes for better orchestration and scaling.

### Example with custom port:
```bash
docker run -d -p 8080:5000 --name farmmate-app farmmate:latest
```
Then access at http://localhost:8080
