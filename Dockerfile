FROM ruby:2.6.6

RUN apt-get update -qy \
  && curl --silent --location https://deb.nodesource.com/setup_12.x | bash \
  && apt-get install -y nodejs \
  && curl -o- -L https://yarnpkg.com/install.sh | bash \
  && gem install bundler --version=2.2.11

RUN export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"