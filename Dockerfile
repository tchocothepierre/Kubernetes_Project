FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN apt-get install zip unzip -y
RUN wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.70/bin/apache-tomcat-8.5.70.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.16/* /usr/local/tomcat/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run



#FROM  ubuntu
#MAINTAINER tchocothepierre@gmail.com
#RUN apt-get update
#RUN apt-get install apache2 -y
#RUN apt-get install wget -y
#RUN chmod 777 -R /var/www/html/
#RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page279/klean.zip
#RUN apt-get install zip unzip -y
#RUN unzip klean.zip -d /var/www/html/
#WORKDIR /var/www/html/
#RUN cp -rvf cleaning-services-website-template /var/www/html/
#RUN rm -rf cleaning-services-website-template klean.zip
#CMD ["/usr/sbin/apache2", "-k", "start"]
#EXPOSE 80 
#CMD apachectl -D FOREGROUND
