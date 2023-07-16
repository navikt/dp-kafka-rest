#!/bin/bash

export KAFKA_REST_BOOTSTRAP_SERVERS="$KAFKA_BROKERS"
export KAFKA_REST_SCHEMA_REGISTRY_URL="$KAFKA_SCHEMA_REGISTRY"

# SSL/Security config for Kafka
export KAFKA_REST_SECURITY_PROTOCOL=SSL
export KAFKA_REST_SSL_KEYSTORE_TYPE_CONFIG=pkcs12
export KAFKA_REST_SSL_TRUSTSTORE_LOCATION=$KAFKA_TRUSTSTORE_PATH
export KAFKA_REST_SSL_TRUSTSTORE_PASSWORD=$KAFKA_CREDSTORE_PASSWORD
export KAFKA_REST_SSL_KEYSTORE_LOCATION=$KAFKA_KEYSTORE_PATH
export KAFKA_REST_SSL_KEYSTORE_PASSWORD=$KAFKA_CREDSTORE_PASSWORD

exec /etc/confluent/docker/run