FROM Ubuntu:18.04

MAINTAINER Anurag

RUN apt-get update && apt-get install -y apache2 && apt-get clean &&rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER www-anurag
ENV APACHE_RUN_GROUP www-anurag
env APACHE_LOG_DIR /var/log/apche2
EXPOSE 80

CMD ["/usr/sbin/apache2" ,"-D","foreground"]
