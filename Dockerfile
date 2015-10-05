FROM ubuntu:14.04

MAINTAINER Javier Tia <javier.tia@gmail.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe" > /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc)-updates main universe" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get -y -q install wget libfreetype6 nodejs npm nodejs-legacy

RUN wget -O revealjs.tar.gz https://github.com/hakimel/reveal.js/archive/3.1.0.tar.gz
RUN mkdir revealjs && tar xzf revealjs.tar.gz --strip-components=1 -C revealjs/

WORKDIR /revealjs

RUN npm install -g grunt-cli
RUN npm install
RUN sed -i Gruntfile.js -e 's/port: port,/port: port, hostname: "",/'

# Add content
ADD index.html /revealjs/
ADD custom.css /revealjs/css/
ADD fonts /revealjs/fonts
ADD plugin/title.js /revealjs/plugin/
ADD plugin/title-footer /revealjs/plugin/title-footer

EXPOSE 8000

CMD ["grunt", "serve"]
