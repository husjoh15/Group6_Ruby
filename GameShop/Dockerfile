FROM ruby:2.2.6

ENV APP_HOME /myapp
ENV RAILS_ENV development
ENV PORT 8080

RUN apt-get update -qq && apt-get install -y  build-essential nodejs sqlite libsqlite3-dev dos2unix
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install
ADD . $APP_HOME

RUN useradd -m myuser
RUN chown -R myuser:myuser $APP_HOME
RUN chmod 0777 -R $APP_HOME
RUN dos2unix $APP_HOME/**/*
USER myuser

RUN /myapp/bin/rake db:migrate RAILS_ENV=$RAILS_ENV

CMD bin/rails server --port $PORT --binding 0.0.0.0 -e $RAILS_ENV
#CMD  echo foo; ls bin
#CMD cat bin/rails