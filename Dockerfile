FROM python:latest

ENV VIRTUAL_ENV "/venv"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg opus-tools bpm-tools
RUN python -m pip install --upgrade pip
RUN python -m pip install wheel Pyrogram TgCrypto
RUN python -m pip install pytgcalls ffmpeg-python psutil

RUN wget -q https://github.com/pinurun/xzone_2/archive/dev.tar.gz && \
    tar xf dev.tar.gz && rm dev.tar.gz

WORKDIR /xzone_2-dev
CMD python3 main.py

# docker build -t tgcalls .
# docker run -it --rm --env-file ./envfile --name xzone_2 tgcalls
