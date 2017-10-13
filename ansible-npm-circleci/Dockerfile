FROM ubuntu:xenial-20171006

ENV DOCKER_CLIENT_VERSION="17.03.0-ce"

RUN apt -y update && apt install -y ansible rsync curl && rm -rf /var/lib/apt/lists/*

# install node 8 and npm
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs && rm -rf /var/lib/apt/lists/*

# install Docker client
RUN curl -L -o /tmp/docker-$DOCKER_CLIENT_VERSION.tgz https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_CLIENT_VERSION.tgz \
      && tar -xz -C /tmp -f /tmp/docker-$DOCKER_CLIENT_VERSION.tgz \
      && mv /tmp/docker/* /usr/bin
