FROM phusion/baseimage

Maintainer Matthew Rose

RUN apt-get update
RUN apt-get install -y wget build-essential

# install ruby-install
RUN wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz
RUN tar -xzvf ruby-install-0.5.0.tar.gz
WORKDIR ruby-install-0.5.0/
RUN make install

# install ruby
RUN ruby-install --system ruby 1.9.3
