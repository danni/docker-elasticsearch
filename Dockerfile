# Dockerfile to build Elasticsearch with our required plugins

FROM elasticsearch

ENV PHONETIC_PLUGIN_VERSION 2.7.0
RUN echo "script.groovy.sandbox.enabled: true" >> /usr/share/elasticsearch/config/elasticsearch.yml

CMD ["sh", "-c", "/usr/share/elasticsearch/bin/plugin -install elasticsearch/elasticsearch-analysis-phonetic/$PHONETIC_PLUGIN_VERSION && /usr/share/elasticsearch/bin/elasticsearch -Des.script.disable_dynamic=false"]
