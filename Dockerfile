FROM confluentinc/cp-kafka-connect:6.2.1

RUN   confluent-hub install --no-prompt debezium/debezium-connector-mongodb:1.7.0 \
   && confluent-hub install --no-prompt debezium/debezium-connector-mysql:1.7.0 \
   && confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:11.1.2 \
   && confluent-hub install --no-prompt neo4j/kafka-connect-neo4j:1.0.9 \
   && confluent-hub install --no-prompt debezium/debezium-connector-postgresql:1.7.0 \
   && confluent-hub install --no-prompt confluentinc/kafka-connect-sftp:2.2.2 \ 
   && confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:0.5.0 \
   && confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:10.2.4 \
   && confluent-hub install --no-prompt confluentinc/kafka-connect-activemq:11.0.8 \
   && confluent-hub install --no-prompt confluentinc/kafka-connect-activemq-sink:1.4.1 \
   && confluent-hub install --no-prompt confluentinc/kafka-connect-http:1.5.0 \
   && confluent-hub install --no-prompt confluentinc/kafka-connect-replicator:6.2.1