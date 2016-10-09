#
# Dockerfile for SFML C++ Project building and testing
#

FROM gcc:latest

MAINTAINER Toni Pesola

RUN apt-get update && \
    apt-get install -y libsfml-dev && \ 
    apt-get install -y lua5.2 && \
    apt-get install -y liblua5.2-dev && \
    apt-get install -y liblua5.2-0

RUN wget http://www.cmake.org/files/v3.6/cmake-3.6.2.tar.gz

RUN tar -xvf cmake-3.6.2.tar.gz

RUN cd cmake-3.6.2 && \
    ./bootstrap && \
    make && \
    make install
