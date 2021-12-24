# GCC support can be specified at major, minor, or micro version
# (e.g. 8, 8.2 or 8.2.0).
# See https://hub.docker.com/r/library/gcc/ for all supported GCC
# tags from Docker Hub.
# See https://docs.docker.com/samples/library/gcc/ for more on how to use this image
FROM gcc:9

# These commands copy your files into the specified directory in the image
# and set that as the working location
COPY . /usr/src/cppcmakemultimodule2
WORKDIR /usr/src/cppcmakemultimodule2

RUN apt-get update && apt-get install -y cmake libgtest-dev libboost-test-dev && rm -rf /var/lib/apt/lists/* 

# This command compiles your app using GCC, adjust for your source code
# RUN g++ -o myapp main.cpp

RUN pwd
RUN ls
RUN rm -rf ./build
RUN mkdir "build"

ARG CM_BUILD_TARGET="MinSizeRel"

WORKDIR /usr/src/cppcmakemultimodule2/build
# RUN cd build
RUN cmake ../
RUN cmake --build . --config ${CM_BUILD_TARGET} --target CppCmakeMultimodule -j 14

# RUN cd ..
WORKDIR /usr/src/cppcmakemultimodule2

# This command runs your application, comment out this line to compile only
CMD ["./build/CppCmakeMultimodule"]

LABEL Name=cmm2 Version=0.0.1
