FROM ubuntu:16.04

COPY dlv /usr/bin
RUN apt-get update
RUN apt-get install --assume-yes unixodbc-bin unixodbc odbc-postgresql

RUN odbcinst -i -d -f /usr/share/psqlodbc/odbcinst.ini.template
RUN rm /etc/odbcinst.ini
COPY odbcinst.ini /etc/odbcinst.ini

VOLUME ["/input"]
WORKDIR /input
ENTRYPOINT ["dlv"]