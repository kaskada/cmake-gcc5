FROM ubuntu:15.10

RUN apt-get update && \
    apt-get install -y gcc g++ cmake git libboost-all-dev

RUN git clone https://github.com/jimporter/bencode.hpp.git && \
    make -C bencode.hpp install && \
    rm -r bencode.hpp

RUN git clone https://github.com/jimporter/mettle.git && \
    make -C mettle install && \
    rm -r mettle

