FROM ubuntu

RUN apt-get update && apt-get install -y \
     ruby \
     ruby-dev \
     sqlite3 \
     libsqlite3-dev \
     bundler \
     git \
     zlibc \
     zlib1g \
     zlib1g-dev

#https://github.com/sportdb/sport.db
RUN gem install sportdb

#https://github.com/sportdb/footty
RUN gem install footty

#https://github.com/sportdb/sport.db.web
RUN gem install sportweb

VOLUME ["/home/football.db"]

#Build with docker build -t dsdb .