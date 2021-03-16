FROM ruby:2.6.6

RUN apt-get update -qy
RUN curl --silent --location https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install -y nodejs awscli jq
RUN gem install bundler --version=2.2.11
RUN npm install -g yarn
ENTRYPOINT ["/bin/bash"]