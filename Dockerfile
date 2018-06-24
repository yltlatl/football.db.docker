FROM ubuntu

RUN apt-get update && apt-get install -y \
     ruby \
     ruby-dev \
     sqlite3 \
     libsqlite3-dev \
     bundler \
     git

#https://github.com/sportdb/sport.db
RUN gem install sportdb

#https://github.com/sportdb/footty
RUN gem install footty


VOLUME ["/home/football.db"]

#Build with docker build -t dsdb .