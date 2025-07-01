# Parallelism_from_first_principles
Implements parallelism techniques for model training from first principles using vanilla PyTorch.


## Docker setup:
```
docker run \
    --rm \
    --volume .:/app \
    --volume /app/.venv \
    -v ~/.gitconfig:~/.gitconfig:ro \
    -v ~/.ssh:~/.ssh:ro \
    parallelism:latest -it
```
