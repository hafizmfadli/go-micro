# base go image
# FROM golang:1.18-alpine as builder

# RUN mkdir /app

# COPY . /app

# WORKDIR /app

# RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api

# RUN chmod +x /app/brokerApp

# build a tiny docker image
# FROM alpine:latest

# RUN mkdir /app

# COPY --from=builder /app/brokerApp /app

# CMD ["/app/brokerApp"]



# Previously, we are using separate container to build & run our binary
# Now, we will build our project in our local machine (using Makefile ) 
# and then copy the binary to the container
FROM alpine:latest

RUN mkdir /app

COPY brokerApp /app

CMD ["/app/brokerApp"]