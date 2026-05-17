# Containers

Docker containers for various services to streamline development. All containers are on a single Docker network "infra" having the subnet 172.18.0.0/16.


## Index

- Postgres          172.18.0.2 (5432)
- MinIO             172.18.0.3 (9000, 9001)
- ClickHouse        172.18.0.4 (8123, 9000)
- Redis             172.18.0.5 (6379)
- LangFuse          172.18.0.6 (3000)
- LangFuseWorker    172.18.0.7 (3030)
- RabbitMQ          172.18.0.8 (5672, 15672)
- SearXNG           172.18.0.9 (8080)
- Ollama            172.18.0.10 (11434)
- Weaviate          172.18.0.11 (8080, 50051)
- Vault             172.18.0.12 (8200)
- Kafka             172.18.0.13 (9092, 9093)
- KafkaUI           172.18.0.14 (8080)
- TimeScaleDB       172.18.0.15 (5432)
- Frappe            172.18.0.16 (8080)
- MySQL             172.18.0.17 (3306)
- MariaDB           172.18.0.18 (3306)
- FusionAuth        172.18.0.19 (9011)
- NginX             172.18.0.20 (80, 443)
- Memcached         172.18.0.21 (11211)
- SeaweedFS         172.18.0.22 (8333, 8888, 9333)
- Windmill          172.18.0.23 (8000)
- WindmillWorker    172.18.0.24 (8000)
