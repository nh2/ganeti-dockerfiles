ganeti-dockerfiles
==================

Dockerfiles for my Ganeti dev environment containers (https://hub.docker.com/u/nh2docker)


Developing Ganeti in Docker
---------------------------

This gives you a complete Ganeti development enviroment to make contributing easy.

Get the image:

```shell
docker pull nh2docker/ganeti-ubuntu1404-code-syshs
```

Compile Ganeti:

```shell
docker run -i -t nh2docker/ganeti-ubuntu1404-code-syshs /bin/bash
cd /ganeti
git pull origin master
./autogen.sh
./configure --prefix=/usr/local --sysconfdir=/etc --localstatedir=/var --enable-haskell-tests --enable-developer-mode
make -j`nproc`
```

**Done.** You can now change the code and recompile with `make`.


Security
--------

Keep in mind that Linux containers do not provide perfect security isolation.

Keep in mind that by using the above you trust the Docker Hub and your network to deliver the container without backdoors.
You can check that you got the right container with:

```shell
/usr/bin/test "$(docker export $(docker create nh2docker/ganeti-ubuntu1404-code-syshs true) | tar xO | sha1sum -b)" = "6a7b50c269ff55ccec613a4bb64a1057b3908c37 *-" && echo good || echo bad
```

Container flavours explained
----------------------------

* `-deps` indicates that this is a container that has Ganeti's run/build dependencies installed.
* `-syshs` indicates that Haskell dependencies are installed via the distribution package manager if possible (as opposed to via `cabal`)
* `-code` indicates that the container includes a Ganeti source code checkout (Ganeti's `master` branch at the time the container was created.
