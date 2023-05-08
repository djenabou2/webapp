
FROM ubuntu:22.04
MAINTAINER djenabou (djenaboubah074@gmail.com)
RUN apt-get update && apt-get install -y git nginx
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
EXPOSE 80
ENTRYPOINT [“/usr/sbin/nginx”, “-g”, “daemon off;”]
