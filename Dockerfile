FROM golang:latest


RUN adduser --disabled-password --gecos '' api
USER api

WORKDIR /go/src/app
COPY ./server .

#RUN dep ensure -add "go.mongodb.org/mongo-driver/mongo"
#RUN dep ensure -add "go.mongodb.org/mongo-driver/mongo"

RUN go get -d -v go.mongodb.org/mongo-driver/mongo
RUN go get -d -v -u github.com/gorilla/mux
RUN go get -d -v -u github.com/golang/glog

RUN go get github.com/pilu/fresh
#RUN go get ./...


CMD [ "fresh" ]