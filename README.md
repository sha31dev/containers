# Containers

Docker containers for various services to streamline development. All containers are on a single Docker network "infra" having the subnet 172.18.0.0/16.


## Index

- Postgres              172.18.0.2 (5432)
- MinIO                 172.18.0.3 (9000, 9001)
- ClickHouse            172.18.0.4 (8123, 9000)
- Redis                 172.18.0.5 (6379)
- LangFuse              172.18.0.6 (3000)
- LangFuseWorker        172.18.0.7 (3030)
- RabbitMQ              172.18.0.8 (5672, 15672)
- SearXNG               172.18.0.9 (8080)
- Ollama                172.18.0.10 (11434)
- Weaviate              172.18.0.11 (8080, 50051)
- Vault                 172.18.0.12 (8200)
- Kafka                 172.18.0.13 (9092, 9093)
- KafkaUI               172.18.0.14 (8080)
- TimeScaleDB           172.18.0.15 (5432)
- Frappe                172.18.0.16 (8080)
- MySQL                 172.18.0.17 (3306)
- MariaDB               172.18.0.18 (3306)
- FusionAuth            172.18.0.19 (9011)
- NginX                 172.18.0.20 (80, 443)
- Memcached             172.18.0.21 (11211)
- SeaweedFS             172.18.0.22 (8333, 8888, 9333)
- Windmill              172.18.0.23 (8000)
- WindmillWorker        172.18.0.24 (8000)
- Kong                  172.18.0.25 (8000, 8001, 8002)
- NiFi                  172.18.0.26 (8080)
- NiFiRegistry          172.18.0.27 (18080)
- Neo4J                 172.18.0.28 (7474, 7687)
- MongoDB               172.18.0.29 (27017)
- Cassandra             172.18.0.30 (9042)
- Weaviate              172.18.0.31 (8080, 50051)
- NATS                  172.18.0.32 (4222, 8222)
- Jenkins               172.18.0.33 (8080)
- OpenSearch            172.18.0.34 (9200)
- OpenSearchDashboards  172.18.0.35 (5601)
- ChromaDB              172.18.0.36 (8000)
- FreeRadius            172.18.0.37 (1812, 1813)
- OpenLDAP              172.18.0.38 (389, 636)
- Consul                172.18.0.39 (8500)
- Traefik               172.18.0.40 (8080)
- ElasticSearch         172.18.0.41 (9200, 9300)
- Kibana                172.18.0.42 (5601)
- LiteLLM               172.18.0.45 (4000)
- BiFrost               172.18.0.48 (8080)
- PHPMyAdmin            172.18.0.49 (80)
- WordPress             172.18.0.50 (80)
- Portainer             172.18.0.51 (9000)
- KeyCloak              172.18.0.52 (8080, 8443)
- Grafana               172.18.0.53 (3000)

## Roadmap

- Logstash              172.18.0.43
- Filebeat              172.18.0.44
- OpenWebUI             172.18.0.46
- SonarQube             172.18.0.47
- Prometheus            172.18.0.54
- Caddy                 172.18.0.55
- Airflow               172.18.0.56
- Hive                  172.18.0.57
- Spark                 172.18.0.58
- InfluxDB              172.18.0.59
- CockroachDB           172.18.0.60
- Zookeeper             172.18.0.61
- ScyllaDB              172.18.0.62
- Envoy                 172.18.0.63 (8080)
- Flink                 172.18.0.64
- CEPH                  172.18.0.65

## Optional

Squid, WireGuard, TailScale, 
VLLM, OpenVPN, Strongswan, 
OpenWhisk, Nextcloud, Bitwarden, 
Bookstack, Authentik
