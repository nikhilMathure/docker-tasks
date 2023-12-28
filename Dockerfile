FROM ubuntu:18.04
MAINTAINER nikhil
RUN apt update && \
apt install -y iputils-ping iproute2
RUN apt install -y nginx
COPY index.html /var/www/html/index.nginx-debian.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
CMD service nginx start
