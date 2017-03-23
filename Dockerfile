FROM ubuntu:16.04

RUN echo 'apt-get update && apt-get install --no-install-recommends -y $*' > /usr/local/bin/pkg-deb
RUN echo 'gem install --no-ri --no-rdoc $*' > /usr/local/bin/pkg-gem
RUN chmod +x /usr/local/bin/pkg-*

RUN pkg-deb git
RUN pkg-deb linkchecker

RUN pkg-deb \
  build-essential=12.1ubuntu2 \
  zlib1g-dev \
  ruby2.3 \
  ruby2.3-dev

RUN pkg-gem bundler:1.14.3
RUN bundle config --global silence_root_warning 1

# These are the slowest installs of all the gem dependencies, so split them out to make rebuilds faster
RUN pkg-gem ffi:1.9.14
RUN pkg-gem nokogiri:1.6.8.1

WORKDIR /src
COPY Gemfile /src/Gemfile
COPY Gemfile.lock /src/Gemfile.lock

RUN bundle install

# Set locale, otherwise `prmd doc` fails.
# See https://github.com/interagent/prmd/issues/237 and http://jaredmarkell.com/docker-and-locales/
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN useradd --create-home --shell /bin/bash jekyll
RUN chown jekyll:jekyll /src
USER jekyll

# Force choosing a command in docker-compose.yml or CLI
CMD jekyll --help
