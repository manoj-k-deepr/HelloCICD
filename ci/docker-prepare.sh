#!/bin/bash


apt-get update && \
	apt-get install -y build-essential git cmake autoconf libtool pkg-config wget

wget https://github.com/Kitware/CMake/releases/download/v3.15.2/cmake-3.15.2.tar.gz
tar -zxvf cmake-3.15.2.tar.gz
cd cmake-3.15.2

#Run the following commands to compile and install CMake
./bootstrap
make
make install
