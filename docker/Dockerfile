FROM ubuntu

ADD html /var/www/html 

RUN apt-get update \
    && apt-get install -y apache2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "ServerName localhost">> /etc/apache2/apache2.conf \
    && service apache2 restart && service apache2 start
   
  
EXPOSE 80
#CMD ["service apache2 start"]

