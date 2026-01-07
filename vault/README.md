# Vault

## Getting started

Create an .env file in the container directory with same contents as .env.example. Replace the values as per the environment and start the container.

```bash
docker compose up -d --build
```

## Initialization

Initialize Vault.

```bash
docker exec vault vault operator init -key-shares=5 -key-threshold=3 -format=json > keys.json
```

Unseal Vault.
```bash
docker exec vault vault operator unseal <key_1>
docker exec vault vault operator unseal <key_2>
docker exec vault vault operator unseal <key_3>
```

Check Vault status.

```bash
docker exec vault vault status
```
