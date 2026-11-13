# developer.webadmit.org

[![Build Status](https://travis-ci.org/Liaison-Intl/Liaison-Intl.github.io.svg?branch=master)](https://travis-ci.org/Liaison-Intl/Liaison-Intl.github.io)

Public API documentation for WebAdMIT.  Hosted with GitHub Pages.

## Getting started

### Docker

cd Liaison-Intl.github.io && docker compose up --build -d 2>&1 | tail -6; sleep 12; docker compose ps; curl -s -o /dev/null -w "index: %{http_code}\n" http://localhost:4567/; curl -s -o /dev/null -w "designation: %{http_code}\n" http://localhost:4567/designation.html; docker compose logs --tail 6; git status --short | grep -v "^ M"

### Local

This site uses GitHub Pages.  GitHub Pages uses a static site generator called Jekyll.

To install Jekyll:

  * Install [Ruby](https://www.ruby-lang.org/en/) by whatever method you prefer.  See `.ruby-version` to determine the correct version to use.
  * Install gems by running `gem install bundler && bundle` in this directory.

After installing, you can run Jekyll as follows:

    bundle exec jekyll serve

And then visit [http://127.0.0.1:4000/](http://127.0.0.1:4000/).

Alternatively, with Docker (serves on port 4567):

    docker compose up --build

And then visit [http://127.0.0.1:4567/](http://127.0.0.1:4567/).

### Docker

cd Liaison-Intl.github.io && docker compose up --build -d 2>&1 | tail -6; sleep 12; docker compose ps; curl -s -o /dev/null -w "index: %{http_code}\n" http://localhost:4567/; curl -s -o /dev/null -w "designation: %{http_code}\n" http://localhost:4567/designation.html; docker compose logs --tail 6; git status --short | grep -v "^ M"

### Ruby version

The Ruby version is pinned in `.ruby-version`, `Gemfile`, and `Dockerfile`.  It is **3.3.x** rather than the newest Ruby release because the `github-pages` gem (which pins the Jekyll toolchain) does not yet support Ruby 4.0.  When upgrading Ruby, change all three places and run `bundle update`.

## Modifying the documentation

See [CONTRIBUTING.md](CONTRIBUTING.md).

## Editing the Menu

The menu and other site layout is in the layout directory.
