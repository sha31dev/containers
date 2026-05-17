#!/bin/sh

rm -f /usr/local/kong/sockets/* 2>/dev/null || true

kong migrations bootstrap 2>/dev/null || kong migrations up

exec kong start
