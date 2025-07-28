# The Abstraction Layers of GPU Parallelism
Implements parallelism techniques for model training from first principles using different levels of abstractions.

It contains the same code implemented in PyTorch DTensors, Distributed RPC, Triton communication kernels, CUDA and NCCL communication kernels, and CUDA + custom NCCL API implementation kernels.

Reference for Types of Parallelism:
1. https://docs.nvidia.com/nemo-framework/user-guide/latest/nemotoolkit/features/parallelisms.html
2. https://github.com/xdit-project/xDiT/tree/main?tab=readme-ov-file#parallel
3. https://github.com/pytorch/torchtitan/tree/main/torchtitan/experiments/simple_fsdp

## Docker setup:
```
docker build -t parallelism:latest .
```
For running container with CPU:
```
docker run \
    --rm \
    -it \
    -e TARGET=cpu \
    --volume /app/.venv \
    -v "$HOME/.gitconfig":/root/.gitconfig:ro \
    -v "$HOME/.ssh":/root/.ssh:ro \
    parallelism:latest
```
For container with CUDA 12.8:
```
docker run --gpus all \
    --rm \
    -it \
    -e TARGET=cu128 \
    --volume /app/.venv \
    -v "$HOME/.gitconfig":/root/.gitconfig:ro \
    -v "$HOME/.ssh":/root/.ssh:ro \
    parallelism:latest
```

## References:
[1] “gpt-2/src/model.py at master · openai/gpt-2,” GitHub. Accessed: July 23, 2025. [Online]. Available: https://github.com/openai/gpt-2/blob/master/src/model.py
[2] Andrej, karpathy/nanoGPT. (July 23, 2025). Python. Accessed: July 23, 2025. [Online]. Available: https://github.com/karpathy/nanoGPT
[3] “nanoGPT/model.py at master · karpathy/nanoGPT,” GitHub. Accessed: July 23, 2025. [Online]. Available: https://github.com/karpathy/nanoGPT/blob/master/model.py
[4] “Parallelisms — NVIDIA NeMo Framework User Guide.” Accessed: July 23, 2025. [Online]. Available: https://docs.nvidia.com/nemo-framework/user-guide/latest/nemotoolkit/features/parallelisms.html
[5] T. Kumar, tanishqkumar/beyond-nanogpt. (July 22, 2025). Python. Accessed: July 23, 2025. [Online]. Available: https://github.com/tanishqkumar/beyond-nanogpt
[6] “torchtitan/torchtitan/experiments/simple_fsdp at main · pytorch/torchtitan,” GitHub. Accessed: July 23, 2025. [Online]. Available: https://github.com/pytorch/torchtitan/tree/main/torchtitan/experiments/simple_fsdp
[7] “transformers/src/transformers/models/gpt2/modeling_gpt2.py at main · huggingface/transformers,” GitHub. Accessed: July 23, 2025. [Online]. Available: https://github.com/huggingface/transformers/blob/main/src/transformers/models/gpt2/modeling_gpt2.py
[8] “xdit-project/xDiT: xDiT: A Scalable Inference Engine for Diffusion Transformers (DiTs) with Massive Parallelism.” Accessed: July 23, 2025. [Online]. Available: https://github.com/xdit-project/xDiT/tree/main?tab=readme-ov-file#parallel
