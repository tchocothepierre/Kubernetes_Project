FROM  centos:latest
LABEL maintainer="tchocothepierre@gmail.com"
LABEL version="0.1"
RUN sudo apt update -y
RUN sudo apt install apache2 
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/klean.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip klean.zip
RUN cp -rvf klean/* .
RUN rm -rf klean klean.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80 22
 
 
# FROM  centos:latest
# LABEL maintainer="tchocothepierre@gmail.com"
# LABEL version="0.1"
# RUN sudo apt update -y
# RUN sudo apt install apache2 
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/dryme.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip dryme.zip
# RUN cp -rvf dryme/* .
# RUN rm -rf dryme dryme.zip
# CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
# EXPOSE 80  
