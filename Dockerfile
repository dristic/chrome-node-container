#
# Node PhantomJS Dockerfile
#
# Dan
#

FROM bradrydzewski/node:0.10
MAINTAINER Dan Ristic <dristic101@gmail.com>

# Define working directory.
WORKDIR /home/ubuntu
USER ubuntu

RUN /bin/bash -c ". /home/ubuntu/nvm/nvm.sh && nvm install v0.10.22 \
    && nvm use v0.10.22 \
    npm install -g grunt && npm install -g phantomjs"
