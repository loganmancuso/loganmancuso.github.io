FROM alpine:latest
RUN apk add ruby-dev alpine-sdk jekyll
RUN gem install bundler
ADD site/ /_site
WORKDIR /_site
RUN bundle install
RUN bundle exec jekyll clean
RUN bundle exec jekyll build
ENTRYPOINT ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]