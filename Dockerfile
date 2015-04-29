FROM nginx:1.7

ENV KIBANA_VERSION 3.1.2

ADD run.sh /usr/local/bin/run

ADD https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}.tar.gz /tmp/kibana.tar.gz
RUN tar xf /tmp/kibana.tar.gz -C /usr/share/nginx/html --strip-components=1

EXPOSE 80

CMD ["/usr/local/bin/run"]
