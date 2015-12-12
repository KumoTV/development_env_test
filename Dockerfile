FROM ruby:2.2.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN mkdir /catalogbuilder
WORKDIR /catalogbuilder

ADD Gemfile /catalogbuilder/Gemfile
ADD Gemfile.lock /catalogbuilder/Gemfile.lock

RUN bundle install

ADD . /catalogbuilder
