FROM ruby:2.5.1
RUN apt-get update -qq \
  && apt-get install -y build-essential mysql-client nodejs vim \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /app
