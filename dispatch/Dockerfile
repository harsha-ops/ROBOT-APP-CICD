FROM golang:1.22

WORKDIR /app

COPY *.go .

RUN go mod init dispatch && go get

RUN go install

CMD dispatch
