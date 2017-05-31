FROM ubuntu:16.04

WORKDIR /home

# install dependencies
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y g++
RUN apt-get install -y make
RUN apt-get install -y wget
RUN apt-get install -y bzip2

# install NASM
RUN apt-get install -y nasm

# build cross compiler
ADD build-gcc.py build-gcc.py
RUN ./build-gcc.py --no-cache -t i686-elf x86_64-elf
