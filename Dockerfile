FROM ubuntu:16.04

COPY dlv /usr/bin
RUN apt-get update
RUN apt-get install --assume-yes unixodbc-bin unixodbc odbc-postgresql
# then install psql-odbc?
RUN odbcinst -i -d -f /usr/share/psqlodbc/odbcinst.ini.template

ENTRYPOINT ["/bin/bash"]