#!/bin/sh

set -e

# Ubuntu 14.04
for d in ganeti-ubuntu1404-{deps,deps-syshs,code-syshs}; do
  docker build -t nh2docker/$d $d
done

# Ubuntu 12.04
for d in ganeti-ubuntu1204-{deps,deps-syshs,code-syshs}; do
  docker build -t nh2docker/$d $d
done

# Debian 7 (Wheezy)
for d in ganeti-debian7-{deps,deps-syshs,code-syshs}; do
  docker build -t nh2docker/$d $d
done
