FROM ruby:2.3.4

RUN apt-get update && \
  curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
  apt-get install -y --no-install-recommends git mysql-client nodejs && \
  npm i -g yarn && \
  yarn global add lerna && \
  rm -rf /var/lib/apt/lists/*
