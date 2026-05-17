FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
ENV NIFI_VERSION=2.4.0
ENV PATH="$JAVA_HOME/bin:$PATH" 

RUN apt-get update && \
    apt-get install -y curl gnupg2 software-properties-common unzip vim wget

RUN add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y openjdk-21-jdk

WORKDIR /opt

RUN wget https://downloads.apache.org/nifi/${NIFI_VERSION}/nifi-${NIFI_VERSION}-bin.zip && \
    unzip nifi-${NIFI_VERSION}-bin.zip && \
    rm nifi-${NIFI_VERSION}-bin.zip && \
    mv nifi-${NIFI_VERSION} nifi

EXPOSE 8080

WORKDIR /opt/nifi

CMD ["/opt/nifi/bin/nifi.sh", "run"]
