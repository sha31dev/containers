# Consul configuration file example.
# List of configuration params can be found here https://developer.hashicorp.com/consul/docs/reference/agent/configuration-file.


# General
auto_reload_config = true
bind_addr = "0.0.0.0"
client_addr = "0.0.0.0"
datacenter = "dc1"
data_dir = "/consul/data"
node_name = "consul"

performance {
    raft_multiplier = 1
}

ports {
    dns      = 8600
    http     = 8500
    https    = -1
    grpc     = -1
    serf_lan = 8301
    serf_wan = 8302
    server   = 8300
}

reconnect_timeout = "72h"
reconnect_timeout_wan = "72h"
server = true
session_ttl_min = "10s"


# ACL
acl {
    enabled = false
    default_policy = "allow"
    enable_token_persistence = true
}

# Bootstrap
bootstrap_expect = 1

# DNS
dns_config {
    allow_stale = true
    enable_truncate = true
    only_passing = false
    max_stale = "0s"
}

# Logs
# log_file = "/var/log/consul.log"
# log_rotate_duration = "24h"
# log_rotate_bytes = 10e+6
# log_rotate_max_files = 5
log_level = "info"
log_json = false

# Service Mesh
connect {
    enabled = true
}

# UI
ui_config {
    content_path = "/ui/"
    enabled = true
}
