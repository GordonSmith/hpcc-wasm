FROM ubuntu:latest

WORKDIR /app

COPY build/llama2 /app/llama2
RUN chmod +x /app/llama2

WORKDIR /wf

ENTRYPOINT [ "/app/llama2" ]
