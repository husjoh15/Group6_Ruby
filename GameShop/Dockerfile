FROM ruby:2.2.6
RUN apt-get update -qq && apt-get install -y  build-essential nodejs
ENV APP_HOME /myapp
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install
ADD . $APP_HOME
RUN chmod 0777 -R $APP_HOME
RUN useradd -m myuser
USER myuser

#CMD bin/rails server --port $PORT --binding 0.0.0.0 -e production
#CMD  echo foo; ls bin
CMD cat bin/rails