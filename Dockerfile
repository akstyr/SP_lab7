FROM ubuntu:latest
COPY ./client1_TCP.cpp ./home
COPY ./client2_UDP.cpp ./home
RUN apt-get -q update && apt-get -q install -y --no-install-recommends apt-utils
RUN apt-get -q install -y g++
WORKDIR ./home/
RUN g++ client1_TCP.cpp -o client1
RUN g++ client2_UDP.cpp -o client2
MAINTAINER Ekaterina Grohotova <katya.grohotova.4@gmail.com>