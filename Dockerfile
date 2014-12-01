FROM debian:jessie
RUN apt-get update
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y nginx-full wget
RUN wget https://download.elasticsearch.org/kibana/kibana/kibana-3.1.0.tar.gz -O /tmp/kibana.tar.gz && \
    tar zxf /tmp/kibana.tar.gz && mv kibana-3.1.0/* /var/www/html
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD run.sh /usr/local/bin/run
EXPOSE 80
CMD ["/usr/local/bin/run"]
