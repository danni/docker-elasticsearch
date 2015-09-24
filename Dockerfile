# Dockerfile to build Elasticsearch with our required plugins

FROM elasticsearch

ADD config.yml /tmp/config.yml
RUN cat /tmp/config.yml >> /usr/share/elasticsearch/config/elasticsearch.yml

RUN /usr/share/elasticsearch/bin/plugin -install elasticsearch/elasticsearch-analysis-phonetic/2.7.0
