M golang:1.24-alpine

RUN apk add --no-cache curl

WORKDIR /app

COPY go.mod .
COPY go.sum .
RUN go mod download

COPY . .

RUN go build -o main .

CMD ["./main"]

EXPOSE {your_application_port}

