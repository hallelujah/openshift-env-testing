FROM ruby:2.3.3-alpine
MAINTAINER Hery Ramihajamalala <hery@rails-royce.org>

COPY ./ ./

ARG GREETING
ENV GREETING=${GREETING:-hello}

RUN echo ${GREETING} > /tmp/greeting.txt \
  && gem install bundler \
  && bundle install

EXPOSE 9292

CMD ["rackup", "-o", "0.0.0.0"]
