# Parallelism From First Principles
Implements parallelism techniques for model training from first principles using vanilla PyTorch.


## Docker setup:
```
docker build -t parallelism:latest .

docker run --gpus all \
    --rm \
    -it \
    --volume /app/.venv \
    -v "$HOME/.gitconfig":/root/.gitconfig:ro \
    -v "$HOME/.ssh":/root/.ssh:ro \
    parallelism:latest
```
