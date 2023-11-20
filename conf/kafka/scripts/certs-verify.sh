#!/bin/bash

# conf/kafka/scripts/certs-verify.sh

set -o nounset \
    -o errexit \
    -o verbose

# See what is in each keystore and truststore
for i in zookeeper zookeeper-a zookeeper-b zookeeper-c kafkabroker kafkabroker-a kafkabroker-b kafkabroker-c schemaregistry clients restproxy connect controlcenter clientrestproxy ksqldb
do
        echo "------------------------------- $i keystore -------------------------------"
	keytool -list -v -keystore conf/kafka/secrets/$i.keystore.jks -storepass confluent | grep -e Alias -e Entry
        echo "------------------------------- $i truststore -------------------------------"
	keytool -list -v -keystore conf/kafka/secrets/$i.truststore.jks -storepass confluent | grep -e Alias -e Entry
done