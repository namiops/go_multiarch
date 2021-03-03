FROM golang:1.15

LABEL maintainer="NamiOps <namiops@gmail.com>"

## ADD User
RUN groupadd -r nami && useradd --no-log-init -m -r -g nami nami
USER nami

## ADD Source files
WORKDIR /home/nami/app
COPY . .
RUN go mod download

## Install to $GOPATH/bin
RUN go install

ENTRYPOINT $GOPATH/bin/go_multiarch
EXPOSE 8000
