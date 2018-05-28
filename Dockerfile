FROM ubuntu:16.04

WORKDIR /home

# install dependencies
RUN apt-get update && apt-get install -y \
bzip2 \
g++ \
git \
grub-common \
grub-pc-bin \
make \
nasm \
python3 \
qemu \
ssh \
wget \
xorriso

# build cross compiler
ADD build-gcc.py build-gcc.py
RUN ./build-gcc.py --no-cache -t i686-elf x86_64-elf
ENV PATH=${PATH}:/root/opt/cross/gcc-7.2.0/bin
