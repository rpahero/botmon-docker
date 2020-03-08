FROM node:12-alpine
MAINTAINER Crystal Yun "crystalyun92@gmail.com"

RUN apk add --no-cache git

WORKDIR /data

RUN git clone https://github.com/rpahero/botmon.git /data/app

WORKDIR /data/app

RUN npm install

CMD [ "npm", "start" ]