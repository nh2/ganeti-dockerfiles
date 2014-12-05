#!/bin/sh

set -e

# Ubuntu 12.04
for i in ganeti-ubuntu1204-{deps,deps-syshs,code-syshs}; do
  docker push nh2docker/$i
done

# Ubuntu 14.04
for i in ganeti-ubuntu1404-{deps,deps-syshs,code-syshs}; do
  docker push nh2docker/$i
done

# Debian 7 (Wheezy)
for i in ganeti-debian7-{deps,deps-syshs,code-syshs}; do
  docker push nh2docker/$i
done

# Ubuntu 14.04 with GHC 7.8
for i in ganeti-ubuntu1404-{deps,code}-ghc78; do
  docker push -t nh2docker/$i
done
