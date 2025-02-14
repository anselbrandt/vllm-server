# vLLM Server

### Docker

```
docker build -t vllm-server .

docker run --privileged --gpus all -d -p 8000:8000 vllm-server
```

```
curl http://localhost:8000/v1/completions \
    -H "Content-Type: application/json" \
    -d '{
        "model": "Qwen/Qwen2.5-1.5B-Instruct",
        "prompt": "What is the deal with peanut butter?",
        "max_tokens": 500,
        "temperature": 0
    }'

```
