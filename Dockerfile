FROM docker:stable

RUN apk add --no-cache npm openssh git

CMD [ "node" ]