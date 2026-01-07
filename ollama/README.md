# Ollama

## Getting started

Mount the correct volume in docker-compose.yml, this is the directory where Ollama will store the models.

Start and exec into the container.

```bash
docker compose up -d --build
docker exec -it <container_id> /bin/bash
```

Once inside the container, pull any model to get started.

```bash
ollama pull mxbai-embed-large:latest
ollama pull deepseek-r1:32b-qwen-distill-q4_K_M
```
