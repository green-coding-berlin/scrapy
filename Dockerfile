FROM python:3.11-slim

WORKDIR /tmp

RUN apt update && apt install -y bash git tox


RUN git clone https://github.com/green-coding-berlin/scrapy.git

WORKDIR /tmp/scrapy/tests

RUN python -m pip install -r requirements.txt
