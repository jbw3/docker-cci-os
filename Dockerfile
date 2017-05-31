FROM ubuntu:16.04

# install NASM
RUN apt-get update
RUN apt-get install -y nasm
RUN apt-get install -y python3
