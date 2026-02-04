FROM eclipse-temurin:11-jdk

# Install Ant
RUN apt-get update && apt-get install -y ant wget unzip && rm -rf /var/lib/apt/lists/*

# Apache Flex SDK
ENV FLEX_VERSION=4.16.1
ENV FLEX_HOME=/opt/flex

RUN mkdir -p /opt \
 && wget https://github.com/apache/flex-sdk/releases/download/release-${FLEX_VERSION}/apache-flex-sdk-${FLEX_VERSION}-bin.tar.gz \
 && tar -xzf apache-flex-sdk-${FLEX_VERSION}-bin.tar.gz \
 && mv apache-flex-sdk-${FLEX_VERSION}-bin ${FLEX_HOME}

ENV PATH="${FLEX_HOME}/bin:${PATH}"

# Pre-create workspace
RUN mkdir -p /workspace
WORKDIR /workspace
