FROM docker:stable

RUN apk add --no-cache npm openssh git curl py-pip

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s \
    https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN pip install --upgrade pip && pip install docker-compose

CMD [ "node" ]