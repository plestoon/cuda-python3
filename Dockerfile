FROM nvidia/cuda:10.2-base

WORKDIR /app

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y python3 python3-pip
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1
RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1
