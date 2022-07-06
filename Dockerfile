FROM  ubuntu:latest
MAINTAINER tchocothepierre@gmail.com
RUN apt-get update
RUN apt-get install -y apache2 && apt-get clean
RUN sudo systemctl enable apache2
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/klean.zip /var/www/html/
WORKDIR /var/www/html/
RUN sudo apt install unzip
RUN unzip klean.zip
RUN cp -rvf klean/* .
RUN rm -rf klean klean.zip
CMD ["/usr/sbin/apache2", "-k", "start"]
EXPOSE 80 
CMD apachectl -D FOREGROUND
 
 
# FROM  centos:latest
# LABEL maintainer="tchocothepierre@gmail.com"
# RUN apt-get update && apt-get install -y apt-transport-https
# RUN sudo apt install apache2 
# RUN sudo apt install apache2 
# RUN sudo ufw app list
# RUN sudo ufw allow 'Apache'
# RUN sudo systemctl enable apache2
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/dryme.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip dryme.zip
# RUN cp -rvf dryme/* .
# RUN rm -rf dryme dryme.zip
# CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
# EXPOSE 80  
