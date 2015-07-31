FROM golang:1.3


RUN apt-get update -y && apt-get install -y zlib1g-dev pkg-config libgeoip-dev git
ENTRYPOINT ["mirrorbits"]
RUN go get github.com/etix/mirrorbits
RUN go install -v github.com/etix/mirrorbits
#COPY mirrorbits.conf /etc/
COPY mirrorbits.conf mirrorbits.conf
