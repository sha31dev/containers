FROM apache/kafka:4.0.0

USER root

RUN apk add --no-cache gettext

COPY jaas.conf /opt/kafka/config/server-jaas.conf.template

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["envsubst < /opt/kafka/config/server-jaas.conf.template > /opt/kafka/config/server-jaas.conf && rm /opt/kafka/config/server-jaas.conf.template && exec /etc/kafka/docker/run"]
