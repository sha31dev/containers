#!/bin/sh

if [ -z "$SEAWEEDFS_ACCESS_KEY" ] || [ -z "$SEAWEEDFS_SECRET_KEY" ]; then
    echo "ERROR: SEAWEEDFS_ACCESS_KEY and SEAWEEDFS_SECRET_KEY must be set" >&2
    exit 1
fi

mkdir -p /etc/seaweedfs

cat > /etc/seaweedfs/s3.json <<EOF
{
  "identities": [
    {
      "name": "admin",
      "credentials": [
        {
          "accessKey": "$SEAWEEDFS_ACCESS_KEY",
          "secretKey": "$SEAWEEDFS_SECRET_KEY"
        }
      ],
      "actions": [
        "Admin",
        "Read",
        "Write",
        "List",
        "Tagging"
      ]
    }
  ]
}
EOF

exec weed server \
    -dir=/data \
    -master.port=9333 \
    -volume.port=8080 \
    -filer \
    -filer.port=8888 \
    -s3 \
    -s3.port=8333 \
    -s3.config=/etc/seaweedfs/s3.json \
    "$@"
