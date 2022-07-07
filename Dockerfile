FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]



#FROM  apache2:latest
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
