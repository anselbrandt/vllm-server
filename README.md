# vLLM Server

### Docker

```
docker build -t vllm-server .

docker run --privileged --gpus all -d -p 8000:8000 vllm-server
```
