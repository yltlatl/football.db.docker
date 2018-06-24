FROM ubuntu

RUN apt-get update && apt-get install -y \
     ruby \
     ruby-dev \
     sqlite3 \
     libsqlite3-dev \
     bundler
#     rake \
#     git

#RUN gem install sqlite3
RUN gem install sportdb


VOLUME ["/home/sqlite3","/home/football.db"]
