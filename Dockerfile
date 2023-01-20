# Create me a dockerfile for a rails 7 application and tailwindcss
FROM ruby:2.7.1-alpine

RUN apk add --no-cache --update \
    build-base \
    nodejs \
    yarn \
    postgresql-dev \
    tzdata \
    git \
    bash

ENV RAILS_ROOT /app

RUN mkdir -p $RAILS_ROOT

WORKDIR $RAILS_ROOT

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD bundle exec puma -C config/puma.rb