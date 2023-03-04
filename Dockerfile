FROM debian

RUN apt update && \
    apt install -y bash cmake make g++ git curl libc6-dev && \
    mkdir /app
COPY . /app/
WORKDIR /app

RUN curl -o /usr/include/sse2neon.h https://raw.githubusercontent.com/DLTcollab/sse2neon/master/sse2neon.h

# ./build.sh -DUSE_STATIC_LIBSTDC