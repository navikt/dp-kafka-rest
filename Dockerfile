FROM confluentinc/cp-kafka-rest:latest

# Setup JMX exporter
ADD --chown=appuser:appuser \
    https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.19.0/jmx_prometheus_javaagent-0.19.0.jar \
    jmx-prometheus.yaml \
    /usr/local/jmx_prometheus/
ENV EXTRA_ARGS="-javaagent:/usr/local/jmx_prometheus/jmx_prometheus_javaagent-0.19.0.jar=5556:/usr/local/jmx_prometheus/jmx-prometheus.yaml" \
    KAFKA_JMX_PORT=5555 \
    KAFKA_JMX_HOSTNAME=localhost

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]