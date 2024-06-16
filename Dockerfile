FROM golang:1.22
WORKDIR /app
ADD go.mod go.sum main.go ./
RUN go mod download
RUN go build -o main /app/main.go
CMD /app/main