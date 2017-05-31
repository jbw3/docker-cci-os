FROM ubuntu:16.04

# install Python and NASM
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y nasm
