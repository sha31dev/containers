FROM memcached:1.6.36

USER root

RUN apt-get update && apt-get install -y --no-install-recommends sasl2-bin netcat-traditional \
    && rm -rf /var/lib/apt/lists/*

COPY init.sh /scripts/init.sh
RUN chmod +x /scripts/init.sh

ENTRYPOINT ["/scripts/init.sh"]

CMD []
