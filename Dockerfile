FROM eclipse-temurin:11-jdk

RUN apt-get update && apt-get install -y ant unzip && rm -rf /var/lib/apt/lists/*

ENV FLEX_HOME=/opt/flex

# Copy SDK from repo instead of wget
COPY docker-assets/apache-flex-sdk-4.16.1-bin.tar.gz /tmp/
RUN mkdir -p ${FLEX_HOME} \
 && tar -xzf /tmp/apache-flex-sdk-4.16.1-bin.tar.gz -C /opt/ \
 && mv /opt/apache-flex-sdk-4.16.1-bin ${FLEX_HOME}

ENV PATH="${FLEX_HOME}/bin:${PATH}"

WORKDIR /workspace
RUN mkdir -p /workspace
