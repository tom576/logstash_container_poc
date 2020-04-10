FROM docker.elastic.co/logstash/logstash:7.2.1
WORKDIR /
RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN rm -f /usr/share/logstash/config/logstash.yml
COPY  logstash/rabbit_pipeline.conf  /usr/share/logstash/pipeline/logstash.conf
COPY  logstash/logstash.yml /usr/share/logstash/config/logstash.yml
