FROM nvidia/cuda:11.4.3-cudnn8-runtime-ubuntu20.04
LABEL authors="aleksandr"

RUN apt-get update && \
    apt-get install --no-install-recommends -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get install --no-install-recommends -y python3.9 python3-distutils python3-pip && \
    apt clean && rm -rf /var/lib/apt/lists/* && \
    apt-get update && apt-get install -y ffmpeg

RUN pip install -U --no-cache-dir whisper-ctranslate2

ENTRYPOINT ["whisper-ctranslate2"]
CMD ["-h"]