FROM ruby:2.7.2

ENV BUNDLER_VERSION=2.2.9

RUN gem update --system && gem install bundler:$BUNDLER_VERSION

WORKDIR /src

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

# Force choosing a command in docker-compose.yml or CLI
CMD jekyll --help
