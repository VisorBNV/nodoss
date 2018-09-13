FROM node:10-alpine

RUN apk add --no-cache openssh git docker

CMD [ "node" ]