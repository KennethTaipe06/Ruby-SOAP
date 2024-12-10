FROM ruby:3.1

WORKDIR /app

COPY Gemfile .
RUN bundle install

COPY . .

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "config.ru", "-o", "0.0.0.0", "-p", "4567"]