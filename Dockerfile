FROM python:3.10-slim

RUN apt-get update && \
    apt-get install -y git ffmpeg && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*

RUN pip install -U openai-whisper && \
    rm -rf /root/.chache/ && \
    rm -rf /root/.cache/pip/ && \
    rm -rf /tmp/* && \
    rm -rf /var/tmp/*

WORKDIR /app
