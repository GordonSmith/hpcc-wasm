FROM ubuntu:latest

WORKDIR /app

COPY hello-world /app/hello-world
RUN chmod +x /app/hello-world

ENTRYPOINT ["/app/hello-world"]
