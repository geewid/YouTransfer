FROM node:8.12

VOLUME /opt/youtransfer/config
VOLUME /opt/youtransfer/uploads

WORKDIR /opt/youtransfer/
RUN npm ci

EXPOSE 5000

CMD npm run
