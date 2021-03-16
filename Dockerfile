FROM ruby:2.6.6

RUN apt-get update -qy
RUN curl --silent --location https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install -y nodejs awscli jq
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN gem install bundler --version=2.2.11

ENV PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"