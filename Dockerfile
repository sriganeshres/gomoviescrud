FROM golang:1.21.6-alpine

WORKDIR /app

COPY . .

RUN go mod download

RUN go build -o /godocker

EXPOSE 8000

CMD [ "/godocker" ]

