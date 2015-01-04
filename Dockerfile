FROM nginx:1.7

ADD https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz /tmp/kibana.tar.gz
ADD run.sh /usr/local/bin/run

RUN tar zxf /tmp/kibana.tar.gz && mv kibana-3.1.0/* /usr/share/nginx/html

EXPOSE 80

CMD ["/usr/local/bin/run"]
