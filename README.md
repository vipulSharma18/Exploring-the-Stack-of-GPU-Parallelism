# Parallelism From First Principles
Implements parallelism techniques for model training from first principles using vanilla PyTorch.

Reference for Types of Parallelism:
1. https://docs.nvidia.com/nemo-framework/user-guide/latest/nemotoolkit/features/parallelisms.html
2. https://github.com/xdit-project/xDiT/tree/main?tab=readme-ov-file#parallel
3. https://github.com/pytorch/torchtitan/tree/main/torchtitan/experiments/simple_fsdp

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
