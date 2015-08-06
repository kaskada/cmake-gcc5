FROM gcc:5.1

ENV CMAKE_VERSION 3.2.3
RUN wget http://www.cmake.org/files/v3.2/cmake-${CMAKE_VERSION}-Linux-x86_64.sh && \
    bash cmake-${CMAKE_VERSION}-Linux-x86_64.sh --prefix=/usr --skip-license

RUN apt-get update && \
    apt-get install -y python-dev

ENV BOOST_VERSION 1.58.0
ENV BOOST_PATH 1_58_0
RUN wget http://downloads.sourceforge.net/project/boost/boost/${BOOST_VERSION}/boost_${BOOST_PATH}.tar.gz && \
    tar xvf boost_${BOOST_PATH}.tar.gz && \
    cd boost_${BOOST_PATH} && \
    ./bootstrap.sh --prefix=/usr && \
    ./b2 --with=all install

RUN git clone https://github.com/jimporter/bencode.hpp.git && \
    cd bencode.hpp && \
    make install

RUN git clone https://github.com/jimporter/mettle.git && \
    cd mettle && \
    make install

