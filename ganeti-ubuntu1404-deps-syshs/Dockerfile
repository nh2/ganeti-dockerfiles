FROM nh2docker/ganeti-ubuntu1404-deps
MAINTAINER Niklas Hambüchen
RUN apt-get update && apt-get install -y --no-install-recommends \
  hlint \
  hscolour \
  libghc-attoparsec-dev \
  libghc-base64-bytestring-dev \
  libghc-crypto-dev \
  libghc-curl-dev \
  libghc-hinotify-dev \
  libghc-hslogger-dev \
  libghc-hunit-dev \
  libghc-json-dev \
  libghc-lens-dev \
  libghc-lifted-base-dev \
  libghc-network-dev \
  libghc-parallel-dev \
  libghc-parallel-dev \
  libghc-psqueue-dev \
  libghc-psqueue-dev \
  libghc-quickcheck2-dev \
  libghc-regex-pcre-dev \
  libghc-snap-server-dev \
  libghc-temporary-dev \
  libghc-test-framework-dev \
  libghc-test-framework-hunit-dev \
  libghc-test-framework-quickcheck2-dev \
  libghc-text-dev \
  libghc-utf8-string-dev \
  libghc-vector-dev \
  libghc-zlib-dev \
  libpcre3-dev \
  shelltestrunner \
  && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
