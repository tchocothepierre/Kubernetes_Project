FROM  ubuntu:latest
MAINTAINER tchocothepierre@gmail.com
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install wget -y
RUN chmod 777 -R /var/www/html/
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page279/klean.zip
RUN apt-get install zip unzip -y
RUN unzip klean.zip -d /var/www/html/
WORKDIR /var/www/html/
# RUN cp -rvf cleaning-services-website-template /var/www/html/
#RUN rm -rf cleaning-services-website-template klean.zip
#CMD ["/usr/sbin/apache2", "-k", "start"]
#EXPOSE 80 
#CMD apachectl -D FOREGROUND
 
 
# FROM  centos:latest
# LABEL maintainer="tchocothepierre@gmail.com"
# RUN apt-get update && apt-get install -y apt-transport-https
# RUN apt install apache2 
# RUN apt install apache2 
# RUN ufw app list
# RUN ufw allow 'Apache'
# RUN systemctl enable apache2
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/dryme.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip dryme.zip
# RUN cp -rvf dryme/* .
# RUN rm -rf dryme dryme.zip
# CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
# EXPOSE 80  
