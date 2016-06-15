#!/bin/sh
set -e
wget http://archive.apache.org/dist/thrift/0.9.3/thrift-0.9.3.tar.gz
tar -xzvf thrift-0.9.3.tar.gz
cd thrift-0.9.3
./configure --with-cpp=yes --with-c_glib=no --with-java=no --with-ruby=no --with-erlang=no --with-go=no --with-nodejs=no
# ./configure --prefix=$HOME/thrift --with-cpp=yes --with-c_glib=no --with-java=no --with-ruby=no --with-erlang=no --with-go=no --with-nodejs=no
make -j4 && sudo make install
cd ..
