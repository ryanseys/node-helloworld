FROM ubuntu
MAINTAINER Ryan Seys <ryan@ryanseys.com>
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update # DATE: 2013/10/26
RUN apt-get upgrade -y
RUN apt-get install -y python-software-properties python g++ make software-properties-common
RUN add-apt-repository ppa:chris-lea/node.js && apt-get update
RUN apt-get install -y nodejs
ADD . /src
RUN cd /src; npm install
CMD ["node", "/src/app.js"]
