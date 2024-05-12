FROM python:alpine3.19

LABEL org.opencontainers.image.authors="dev@kjuly.com" \
      org.opencontainers.image.licenses=MIT \
      org.opencontainers.image.source=https://github.com/Kjuly/docker-sphinx \
      org.opencontainers.image.description="A tiny Docker image for Sphinx, based on Alpine Linux with Python3."

RUN pip install pip setuptools certifi urllib3 requests idna --upgrade && \
    pip install -U sphinx && \
    pip cache purge
