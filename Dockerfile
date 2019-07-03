FROM ubuntu:16.04
MAINTAINER Pawlovicky <pawlovicky@gmail.com>

# Install git, wget, bc and dependencies
RUN apt-get update && apt-get install -y \
  git \
  iproute2 \
  wget \
  python3.5 \
  python3-pip \
  python3-dev \
  r-base \
  libzmq3-dev \
  libcurl4-openssl-dev \
  libssl-dev


# Install tensorflow and basics
# ENV TF_PYTHON_URL https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.1.0-cp35-cp35m-linux_x86_64.whl
# RUN pip3 install $TF_PYTHON_URL \

RUN pip3 install jupyter \
    pandas\
    matplotlib \
    sklearn


# Set working directory
WORKDIR /work

ENTRYPOINT ["/bin/bash"]

