FROM gcc:5.1

ENV CMAKE_VERSION 3.2.3
RUN wget http://www.cmake.org/files/v3.2/cmake-${CMAKE_VERSION}-Linux-x86_64.sh && \
    bash cmake-${CMAKE_VERSION}-Linux-x86_64.sh --prefix=/usr --skip-license

RUN apt-get install libboost1.49-all-dev
