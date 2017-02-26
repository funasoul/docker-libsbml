FROM debian:jessie
MAINTAINER Akira Funahashi "funa@bio.keio.ac.jp"

RUN apt-get -y update && apt-get install -y libxml2

COPY lib/libsbml-5.13.0-docker.tar.gz /tmp/
RUN tar -C / -xzf /tmp/libsbml-5.13.0-docker.tar.gz
RUN rm /tmp/libsbml-5.13.0-docker.tar.gz
