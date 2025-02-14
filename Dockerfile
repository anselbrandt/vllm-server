FROM nvidia/cuda:12.8.0-cudnn-runtime-ubuntu24.04

# Install uv.
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

COPY . /app

WORKDIR /app
RUN uv sync --frozen --no-cache

CMD ["uv", "run", "vllm", "serve", "Qwen/Qwen2.5-3B-Instruct"]