FROM chrislusf/seaweedfs:latest

RUN apk add --no-cache wget

COPY init.sh /scripts/init.sh
RUN chmod +x /scripts/init.sh

ENTRYPOINT ["/scripts/init.sh"]

CMD []
