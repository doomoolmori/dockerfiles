FROM ubuntu:artful-20180417

ENV DOCKER_CLIENT_VERSION="18.03.1-ce"

RUN apt-get -y update && apt-get install -y ansible rsync ssh curl make git && rm -rf /var/lib/apt/lists/*

# install node 8 and npm
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs && rm -rf /var/lib/apt/lists/*

# install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
      && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
      && apt -y update && apt install -y yarn

# install Docker client
RUN curl -L -o /tmp/docker-$DOCKER_CLIENT_VERSION.tgz https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_CLIENT_VERSION.tgz \
      && tar -xz -C /tmp -f /tmp/docker-$DOCKER_CLIENT_VERSION.tgz \
      && mv /tmp/docker/* /usr/bin

ADD test.sh /tmp/test.sh
