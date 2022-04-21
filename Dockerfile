FROM ruby:3.0

WORKDIR /usr/src/app

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

COPY Gemfile ./
RUN bundle lock --add-platform x86_64-linux

# RUN gem install jekyll webrick bundler

RUN touch Gemfile.lock
RUN bundle install



COPY ./app /usr/src/app
# CMD ["bundle exec jekyll serve"]
CMD ["jekyll", "serve", "-s", "/usr/src/app", "--watch", "--verbose", "--trace"]
# ENTRYPOINT ["/bin/bash"]
