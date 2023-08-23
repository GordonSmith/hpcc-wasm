FROM ubuntu:latest

WORKDIR /app

COPY sieve .

ENTRYPOINT ["/app/sieve"]