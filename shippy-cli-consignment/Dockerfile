FROM golang:alpine as builder

RUN apk update && apk upgrade && \
    apk add --no-cache git

WORKDIR /app

COPY . .

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o shippy-cli-consignment

FROM scratch

WORKDIR /app

COPY ./consignment.json /app

COPY --from=builder /app/shippy-cli-consignment .

CMD ["./shippy-cli-consignment"]