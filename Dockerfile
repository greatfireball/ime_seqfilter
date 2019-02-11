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

RUN apt update && apt install --yes git make && git clone https://github.com/BioInf-Wuerzburg/SeqFilter.git && cd SeqFilter && git checkout d92ff27b810be76e4f9394c4f9e98648ebfbc915 && make && rm -rf .git && apt remove --yes git make

ENV PATH "$PATH:/opt/SeqFilter/bin/"

ADD generate_test_seq.pl /opt/SeqFilter

RUN /opt/SeqFilter/generate_test_seq.pl >/opt/SeqFilter/test.fa

VOLUME /data
WORKDIR /data

ENTRYPOINT ["SeqFilter"]
