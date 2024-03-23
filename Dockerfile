FROM arm64v8/ruby:3.3.0-alpine

WORKDIR /app

RUN apk --update add build-base

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . /app

CMD ["bundle", "exec", "sidekiq", "-r", "./src/workers/link_extractor_worker.rb"]
