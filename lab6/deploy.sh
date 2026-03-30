PORT=8080
echo "Building Docker image..."
docker build -t myapp:latest .
echo "Stopping old container..."
docker stop myapp || true
docker rm myapp || true
echo "Running new container on port $PORT..."
docker run -d --name myapp -p $PORT:8080 myapp:latest
echo "App deployed!"
echo "Use Killercoda Traffic tab Port $PORT"
                  
