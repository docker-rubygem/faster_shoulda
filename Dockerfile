FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.11.4

RUN gem install faster_shoulda --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["convert_to_should_syntax"]
CMD ["--help"]
