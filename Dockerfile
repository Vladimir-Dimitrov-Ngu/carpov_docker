FROM ubuntu:20.04

RUN apt-get update && apt-get install -y vim wget curl git

WORKDIR /home/vladimir

COPY ./script.sh ./script.sh



