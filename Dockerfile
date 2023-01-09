FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN service apache2 restart
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
RUN service apache2 start

## To solve apache2 problem
## https://www.youtube.com/watch?v=_Ru96LS0M-Q

