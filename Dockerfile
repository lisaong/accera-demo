FROM python:3.7-slim

RUN apt-get update && apt-get install -y gcc libomp-11-dev

# create user with a home directory
ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

RUN pip install --no-cache notebook

WORKDIR ${HOME}