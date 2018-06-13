Builds a docker container that can run dlv programs and has set up an odbc driver for connecting to external postgresql databases.

To use, only the file odbc.ini needs to be changed with database name, servername and port number of database being connected to.

Usage:
```
# Build container
docker build . -t dlv

# Run container
docker run -v $(pwd)/odbc.ini:/etc/odbc.ini -v $(pwd)/files:/input dlv [file1] [file2]...
```
