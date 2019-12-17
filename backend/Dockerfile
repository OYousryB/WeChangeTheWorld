FROM ruby:2.6.0
RUN mkdir /backend
WORKDIR /backend
COPY Gemfile Gemfile.lock ./
COPY config ./
RUN gem install bundler
RUN bundle install
COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
COPY wait-services.sh /usr/bin/
RUN chmod +x /usr/bin/wait-services.sh

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3000"]