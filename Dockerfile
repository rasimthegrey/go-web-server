FROM golang:1.22

WORKDIR /app

# install dependencies
COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o /go-web-server .

CMD [ "/go-web-server" ]

EXPOSE 8080