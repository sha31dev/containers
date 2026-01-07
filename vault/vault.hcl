api_addr = "http://172.18.0.12:8200"
cluster_addr = "http://172.18.0.12:8201"
default_lease_ttl = "20m"
disable_cache = true
disable_mlock = true
disable_printable_check = true
max_lease_ttl = "2h"
raw_storage_endpoint = true
ui = true

listener "tcp" {
    address = "0.0.0.0:8200"
    tls_disable = true
}

storage "raft" {
    node_id = "node-1"
    path = "/vault/data"
}
