# Docker ELK Stack Monitoring

This repository contains a Docker Compose configuration for setting up an ELK (Elasticsearch, Logstash, Kibana) stack along with Prometheus, InfluxDB, Chronograf, and Grafana for monitoring purposes.

## Prerequisites

* Docker Engine
* Docker Compose

## Usage

1. Navigate to the cloned repository

```sh
cd monitoring
```

2. Start the monitoring stack using Docker Compose

```sh
sudo docker-compose up -d
```

3. Access the services:

* Elasticsearch: http://localhost:9200
* Kibana: http://localhost:5601
* Prometheus: http://localhost:9090
* InfluxDB: http://localhost:8086
* Chronograf: http://localhost:8888
* Grafana: http://localhost:3000

## Configuration

1. Elasticsearch:

* Configuration file: elasticsearch/config/elasticsearch.yml
* Data volume: elasticsearch

2. Logstash:

* Configuration file: logstash/config/logstash.yml
* Pipeline configuration: logstash/pipeline

3. Kibana:

* Configuration file: kibana/config/kibana.yml

4. Prometheus:

* Configuration file: prometheus/prometheus.yml
* Data volume: prometheus/data

5. InfluxDB:

* Data volume: influxdb

6. Chronograf:

* Data volume: chronograf

7. Grafana:

* Data volume: grafana

## Networking
The services are connected to the elk bridge network for communication.

## Monitoring

* Log aggregation and analysis: Elasticsearch, Logstash, Kibana
* Metrics monitoring: Prometheus
* Time-series data storage: InfluxDB
* Visualization and dashboarding: Chronograf, Grafana

## License
This project is licensed under the MIT License.