from unittest import TestCase
from com.kafka.confluent.kafka_utils import read_kafka_config

class Test(TestCase):
    def test_read_kafka_config(self):
        config = read_kafka_config('/home/brijeshdhaker/IdeaProjects/docker-kafka-cluster/src/main/resources/librdkafka_plaintext.config')
        self.assertEqual(config, {
            'bootstrap.servers': 'kafkabroker-a.sandbox.net:19091,kafkabroker-b.sandbox.net:19091,kafkabroker-c.sandbox.net:19091'
        })

        # self.fail()

if __name__ == '__main__':
    TestCase.main()