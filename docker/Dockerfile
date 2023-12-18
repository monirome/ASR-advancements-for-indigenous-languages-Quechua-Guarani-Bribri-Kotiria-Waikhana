########################################################
# Docker mod for fairseq 0.12.2 ########################
# It is not necessary to have cuda drivers installed ###
# Ivan G Torre #########################################
########################################################

FROM nvcr.io/nvidia/pytorch:23.10-py3

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    gedit \
    git \
    ffmpeg \
    libsndfile1 \
    libsox-fmt-mp3 \
    libboost-system-dev \
    libboost-thread-dev \
    libboost-program-options-dev \
    libboost-test-dev \
    libeigen3-dev \
    nano \
    python3-pip \
    sox \
    wget \
    zlib1g \
    zlib1g-dev \
    liblzma-dev


RUN python -m pip install --upgrade pip

RUN python -m pip install \
    editdistance \
    pandas \
    sentencepiece \
    tensorboardX \
    tqdm


# INSTALL Flashlight Python Bindings
WORKDIR /opt
RUN git clone https://github.com/kpu/kenlm && cd kenlm && mkdir -p build && cd build && cmake .. && make -j 4
RUN pip install https://github.com/kpu/kenlm/archive/master.zip

WORKDIR /opt
RUN git clone https://github.com/xianyi/OpenBLAS.git && cd OpenBLAS && mkdir -p build && cd build && \
    cmake .. && make -j 4 && make install

WORKDIR /opt
RUN wget http://www.fftw.org/fftw-3.3.10.tar.gz && tar -xvf fftw-3.3.10.tar.gz && cd fftw-3.3.10 && \
    mkdir build && cd build && cmake .. && make -j 4 && make install


WORKDIR /workspace
ENV KENLM_ROOT=/opt/kenlm

COPY flashlight.zip .

RUN unzip flashlight && cd flashlight/bindings/python && \
    pip3 install -e .

RUN pip3 install omegaconf hydra-ax-sweeper==1.2

## Install fairseq
COPY audio_pretraining.py .
COPY infer.py .

RUN git clone --depth 1 --branch v0.12.2 https://github.com/pytorch/fairseq && \
    cp audio_pretraining.py fairseq/fairseq/tasks/. && \
    cp infer.py fairseq/examples/speech_recognition/. && \
    cd fairseq && pip install --editable . && cp examples/speech_recognition/infer.py .


WORKDIR /workspace
