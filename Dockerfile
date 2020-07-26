FROM nvidia/cuda:10.2-base

WORKDIR /app

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y python3 python3-pip
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip
