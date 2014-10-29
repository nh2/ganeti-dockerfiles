FROM ubuntu:12.04
MAINTAINER Niklas Hambüchen
RUN apt-get update && apt-get install -y --no-install-recommends \
  # Requirements from Ganeti quick installation guide
  bridge-utils \
  fping \
  iproute \
  iputils-arping \
  lvm2 \
  m4 \
  make \
  ndisc6 \
  openssl \
  python \
  python-bitarray \
  python-ipaddr \
  python-openssl \
  python-pycurl \
  python-pyinotify \
  python-pyparsing \
  python-simplejson \
  socat \
  ssh \
  # Optional packages from Ganeti quick installation guide
  python-paramiko \
  python-psutil \
  qemu-utils \
  # Packages from Developer notes
  automake \
  fakeroot \
  git \
  graphviz \
  pandoc \
  python-epydoc \
  python-setuptools \
  python-sphinx \
  python-yaml \
  && \
  easy_install \
  coverage \
  logilab-astng==0.24.1 \
  logilab-common==0.58.3 \
  mock==1.0.1 \
  pep8==1.3.3 \
  pylint==0.26.0 \
  && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
