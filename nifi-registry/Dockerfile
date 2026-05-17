FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV NIFI_VERSION=2.4.0
ENV PATH="$JAVA_HOME/bin:$PATH" 

RUN apt-get update && \
    apt-get install -y curl gnupg2 openjdk-21-jdk software-properties-common unzip vim wget

WORKDIR /opt

RUN wget https://downloads.apache.org/nifi/${NIFI_VERSION}/nifi-registry-${NIFI_VERSION}-bin.zip && \
    unzip nifi-registry-${NIFI_VERSION}-bin.zip && \
    rm nifi-registry-${NIFI_VERSION}-bin.zip && \
    mv nifi-registry-${NIFI_VERSION} nifi-registry

EXPOSE 18080

WORKDIR /opt/nifi-registry

CMD ["/opt/nifi-registry/bin/nifi-registry.sh", "run"]
