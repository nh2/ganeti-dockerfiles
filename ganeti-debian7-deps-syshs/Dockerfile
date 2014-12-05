FROM nh2docker/ganeti-debian7-deps
MAINTAINER Niklas Hambüchen
# Profiling support:
# Remember to install `libghc-*-prof` packages if any and use
# `cabal install` with `--enable-library-profiling`.
RUN apt-get update && apt-get install -y --no-install-recommends \
  cabal-install \
  hlint \
  hscolour \
  libghc-attoparsec-prof \
  libghc-base64-bytestring-prof \
  libghc-crypto-prof \
  libghc-curl-prof \
  libghc-hinotify-prof \
  libghc-hslogger-prof \
  libghc-hunit-prof \
  libghc-json-prof \
  libghc-lifted-base-prof \
  libghc-network-prof \
  libghc-parallel-prof \
  libghc-parallel-prof \
  libghc-psqueue-prof \
  libghc-psqueue-prof \
  libghc-quickcheck2-prof \
  libghc-regex-pcre-prof \
  libghc-snap-server-prof \
  libghc-temporary-prof \
  libghc-test-framework-prof \
  libghc-test-framework-hunit-prof \
  libghc-test-framework-quickcheck2-prof \
  libghc-text-prof \
  libghc-utf8-string-prof \
  libghc-vector-prof \
  libghc-zlib-prof \
  libpcre3-dev \
  shelltestrunner \
  && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && \
  cabal update \
  && \
  cabal install --enable-library-profiling \
  lens==3.10 \
  && \
  rm -rf $HOME/.cabal/packages
