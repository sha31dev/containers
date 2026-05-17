#!/bin/sh
set -eu

mkdir -p /etc/nats

cat > /etc/nats/init.conf <<EOF
authorization {
    users = [
        { user: "${NATS_USER}", password: "${NATS_PASSWORD}" }
    ]
}
EOF

exec nats-server "$@"
