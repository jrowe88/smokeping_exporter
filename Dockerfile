FROM golang:latest

WORKDIR /go/src/app

RUN apt-get install libcap2-bin
RUN apt-get install git
RUN go get -v github.com/superq/smokeping_prober
RUN setcap cap_net_raw=+ep ${GOPATH}/bin/smokeping_prober

#ENV LISTEN_PORT 9374
#ENV LISTEN_ADDRESS :$LISTEN_PORT
#ENV INTERVAL_SEC 1s
#ENV PING_HOSTS www.google.com

EXPOSE $LISTEN_PORT

CMD ["--web.listen-address=:9374", "-i 1s", "www.google.com"]

ENTRYPOINT ["/go/bin/smokeping_prober"]
