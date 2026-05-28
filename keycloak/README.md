# KeyCloak

## Generating Certificates

```bash
openssl req -newkey rsa:2048 -nodes -keyout certs/keycloak.key -x509 -days 365 -out certs/keycloak.crt
```

## Getting started

Create an .env file in the container directory with same contents as .env.example. Replace the values as per the environment and start the container.

```bash
docker compose up -d --build
```
