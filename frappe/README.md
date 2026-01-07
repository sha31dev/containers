# Frappe

## Getting started

Mount the correct volume in docker-compose.yml, this is the directory where Frappe bench will be installed. All the apps and sites will reside here.

Start and exec into the container.

```bash
docker compose up -d --build
docker exec -it <container_id> /bin/bash
```

Once inside the container, initialize bench. Increase the Git HTTP buffer if required.

```bash
git config --global http.postBuffer 524288000
bench init frappe-bench --frappe-path <git_url> --frappe-branch version-15 --skip-redis-config-generation
```
