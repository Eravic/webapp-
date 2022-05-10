FROM ubuntu:18.04
MAINTAINER eravic (fotsotchuente@yahoo.fr)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git 
EXPOSE 80
RUN rm -Rf /var/www/html/* 
#ADD static-website-example/ /var/www/html/
RUN git clone https://github.com/diranetafen/static-website-example.git
