FROM ruby:2.7.0

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    yarn \
    default-mysql-client \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENV LANG ja_JP.UTF-8

ENV APP_PATH /pasotre

RUN mkdir $APP_PATH
WORKDIR $APP_PATH

ADD Gemfile $APP_PATH/Gemfile
ADD Gemfile.lock $APP_PATH/Gemfile.lock

RUN gem update bundler && bundle install

ADD . $APP_PATH

RUN yarn install --check-files
RUN yarn webpack --config ./config/webpack/development.js

# Nginxと通信を行うための準備
RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pids

VOLUME $APP_PATH/public
VOLUME $APP_PATH/tmp

RUN yarn install --check-files
RUN SECRET_KEY_BASE=placeholder bundle exec rails assets:precompile