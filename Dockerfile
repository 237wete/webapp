FROM ubuntu
MAINTAINER Wete Nidjo Arnaul
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD SITE_WETE/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/237wete/SITE_WETE.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

