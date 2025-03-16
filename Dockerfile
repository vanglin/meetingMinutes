FROM ubuntu:latest

EXPOSE 80 443
WORKDIR /data/zhenxue

RUN apt-get update
RUN apt install -y iputils-ping
RUN apt-get install -y python3
RUN apt-get install -y curl
RUN curl -fsSL https://ollama.com/install.sh | sh
