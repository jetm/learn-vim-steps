FROM ubuntu:14.04

MAINTAINER Javier Tia <javier.tia@gmail.com>

# Set HP corporate proxy
ENV HTTP_PROXY=http://web-proxy.cr.hpecorp.net:8080 \
    HTTPS_PROXY=http://web-proxy.cr.hpecorp.net:8080 \
    FTP_PROXY=http://web-proxy.cr.hpecorp.net:8080 \
    SOCKS_PROXY=http://web-proxy.cr.hpecorp.net:8080 \
    NO_PROXY=localhost,127.0.0.1,*.hpe.com,*.hpecorp.net,*.hp.com,*.hpqcorp.net,*.cpqcorp.net \
    http_proxy=http://web-proxy.cr.hpecorp.net:8080 \
    https_proxy=http://web-proxy.cr.hpecorp.net:8080 \
    ftp_proxy=http://web-proxy.cr.hpecorp.net:8080 \
    socks_proxy=http://web-proxy.cr.hpecorp.net:8080 \
    no_proxy=localhost,127.0.0.1,*.hpe.com,*.hpecorp.net,*.hp.com,*.hpqcorp.net,*.cpqcorp.net

RUN echo "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe" > /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc)-updates main universe" >> /etc/apt/sources.list
RUN apt-get update

RUN apt-get -y -q install wget libfreetype6 nodejs npm nodejs-legacy

RUN wget -O revealjs.tar.gz https://github.com/hakimel/reveal.js/archive/3.2.0.tar.gz
RUN mkdir revealjs && tar xzf revealjs.tar.gz --strip-components=1 -C revealjs/

WORKDIR /revealjs

RUN npm install -g grunt-cli
RUN npm install
RUN sed -i Gruntfile.js -e 's/port: port,/port: port, hostname: "",/'

# Add content
ADD index.html /revealjs/
ADD custom.css /revealjs/css/
ADD fonts /revealjs/fonts
ADD images /revealjs/images
# ADD plugin/title.js /revealjs/plugin/
# ADD plugin/title-footer /revealjs/plugin/title-footer

EXPOSE 8000

CMD ["grunt", "serve"]
