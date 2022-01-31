FROM python:3.7-slim

RUN apt-get update && apt-get install -y gcc libomp-11-dev
RUN pip install --no-cache notebook jupyterlab
WORKDIR /tmp

ADD quickstart.ipynb /tmp/quickstart.ipynb