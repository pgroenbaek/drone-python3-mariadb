FROM python:3.12-bookworm

LABEL maintainer="Peter Grønbæk Andersen <peter@grnbk.io>"

RUN apt update && apt install -y software-properties-common
RUN add-apt-repository 'deb http://ftp.debian.org/debian sid main'
RUN apt update
RUN apt install -y mariadb-client

RUN pip install --upgrade pip
RUN pip install mariadb
RUN pip install poetry

USER root

ENTRYPOINT ["/bin/bash"]

CMD ["-c"]
