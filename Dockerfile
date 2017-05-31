FROM python:3.5

# install NASM
RUN apt-get update
RUN apt-get install nasm
