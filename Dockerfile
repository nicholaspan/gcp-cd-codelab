FROM golang

ADD . /go/src/github.com/nicholaspan/gcp-cd-codelab

RUN go install github.com/nicholaspan/gcp-cd-codelab

ADD ./content /content

ENTRYPOINT /go/bin/gcp-cd-codelab

