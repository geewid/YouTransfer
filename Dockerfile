FROM node:8.12

WORKDIR /opt/
RUN git clone https://github.com/remie/YouTransfer.git youtransfer

VOLUME /opt/youtransfer/config
VOLUME /opt/youtransfer/uploads

WORKDIR /opt/youtransfer/

RUN npm ci

EXPOSE 5000

CMD npm start
