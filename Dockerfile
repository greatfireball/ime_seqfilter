ARG osversion=xenial
FROM ubuntu:${osversion}

ARG VERSION=master
ARG VCS_REF
ARG BUILD_DATE

RUN echo "VCS_REF: "${VCS_REF}", BUILD_DATE: "${BUILD_DATE}", VERSION: "${VERSION}

LABEL maintainer="frank.foerster@ime.fraunhofer.de" \
      description="Dockerfile providing the SeqFilter software package" \
      version=${VERSION} \
      org.label-schema.vcs-ref=${VCS_REF} \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.vcs-url="https://github.com/greatfireball/ime_seqfilter.git"

WORKDIR /opt

RUN apt update && apt install --yes git make && git clone https://github.com/BioInf-Wuerzburg/SeqFilter.git && cd SeqFilter && make

ENV PATH "$PATH:/opt/SeqFilter/bin/"

VOLUME /data
WORKDIR /data

ENTRYPOINT ["SeqFilter"]
