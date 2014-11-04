FROM nh2docker/ganeti-ubuntu1404-deps
MAINTAINER Niklas Hambüchen

# Profiling support:
# Remember to install `libghc-*-prof` packages if any and use
# `cabal install` with `--enable-library-profiling`.

# GHC
RUN apt-get update && apt-get install -y \
  libgmp-dev \
  wget \
  zlib1g-dev \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /ghc-install-tmp \
  && cd /ghc-install-tmp \
  && wget http://www.haskell.org/ghc/dist/7.8.3/ghc-7.8.3-x86_64-unknown-linux-deb7.tar.bz2 \
  && tar xaf ghc-7.8.3-x86_64-unknown-linux-deb7.tar.bz2 \
  && cd ghc-7.8.3 \
  && ./configure --prefix=/usr/local/ghc-7.8 \
  && make install \
  && cd / \
  && rm -r /ghc-install-tmp
ENV PATH /usr/local/ghc-7.8/bin:$PATH
RUN mkdir /cabal-install-tmp \
  && cd /cabal-install-tmp \
  && wget http://www.haskell.org/cabal/release/cabal-install-1.20.0.3/cabal-install-1.20.0.3.tar.gz \
  && tar xaf cabal-* \
  && cd cabal-* \
  && EXTRA_CONFIGURE_OPTS=--enable-library-profiling ./bootstrap.sh \
  && cd / \
  && rm -r /cabal-install-tmp
ENV PATH /root/.cabal/bin:$PATH

# Ganeti
RUN apt-get update && apt-get install -y --no-install-recommends \
  libcurl4-openssl-dev \
  libpcre3-dev \
  man-db \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Workaround for https://github.com/haskell/cabal/issues/1883:
ENV LANG C.UTF-8
RUN cabal update
# hlint requires happy to be there before install
RUN cabal install happy --enable-library-profiling
RUN cabal install hlint --enable-library-profiling
# Install all Haskell dependencies with cabal.
RUN cd /tmp \
  && wget https://raw.githubusercontent.com/ganeti/ganeti/master/cabal/ganeti.template.cabal \
  && cabal install --only-dependencies ganeti.template.cabal --enable-library-profiling \
  && rm ganeti.template.cabal
