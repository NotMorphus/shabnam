FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
ADD index.html /var/www/html/
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND" ]
