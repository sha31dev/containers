# Consul

## Getting started

```bash
docker compose up -d --build
```

If authentication is enabled then generate secret_id after bootstrap.

```bash
docker exec -it <container_id> consul acl bootstrap
```

Use the secret_id to login into the UI.

```bash
http://<container_id>:8500:/ui
```
