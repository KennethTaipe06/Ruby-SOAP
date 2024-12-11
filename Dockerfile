FROM ruby:3.1

WORKDIR /app

COPY Gemfile .
RUN bundle install

COPY . .

# Copia el archivo README.md para documentar dentro del contenedor
COPY README.md .

EXPOSE 4567

CMD ["bundle", "exec", "rackup", "config.ru", "-o", "0.0.0.0", "-p", "4567"]