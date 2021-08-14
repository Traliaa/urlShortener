FROM golang:1.16

WORKDIR /go/src/app
COPY . .

CMD ["./main"]
RUN echo "running"

EXPOSE 80