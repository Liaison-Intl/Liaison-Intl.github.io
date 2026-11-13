FROM ruby:3.3.13

ENV BUNDLER_VERSION=2.5.22

RUN gem install bundler:$BUNDLER_VERSION

WORKDIR /src

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

# Force choosing a command in docker-compose.yml or CLI
CMD ["bundle", "exec", "jekyll", "--help"]
