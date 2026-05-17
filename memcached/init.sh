#!/bin/bash

if [[ -z "$MEMCACHED_USER" || -z "$MEMCACHED_PASSWORD" ]]; then
    echo "ERROR: MEMCACHED_USER and MEMCACHED_PASSWORD must be set" >&2
    exit 1
fi

MEMCACHED_MEMORY_LIMIT=${MEMCACHED_MEMORY_LIMIT:-64}

if [[ ! -f /usr/lib/sasl2/memcached.conf ]]; then
    echo mech_list: plain > /usr/lib/sasl2/memcached.conf
    echo "$MEMCACHED_PASSWORD" | saslpasswd2 -a memcached -c "$MEMCACHED_USER" -p
    chown memcache:memcache /etc/sasldb2
    chmod 600 /etc/sasldb2
    chown memcache:memcache /usr/lib/sasl2/memcached.conf
    chmod 644 /usr/lib/sasl2/memcached.conf
fi

memcached -u memcache -l 0.0.0.0 --conn-limit=1024 --enable-sasl --memory-limit="$MEMCACHED_MEMORY_LIMIT" --threads=4 $@
