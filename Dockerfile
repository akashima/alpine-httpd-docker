#
# LAMP Base
#
# 20180126
#   Alpine 3.7.0
#   Apache 2.4
#   PHP 7.1

FROM alpine
MAINTAINER kashima

RUN apk update && apk upgrade && apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main --repository http://dl-cdn.alpinelinux.org/alpine/edge/community apache2 php7 php7-apache2 php7-openssl php7-pdo php7-tokenizer php7-xml php7-json php7-phar php7-zip php7-opcache php7-mbstring git curl && \
    mkdir -p /run/apache2

COPY ./status.html /var/www/localhost/htdocs
COPY ./httpd.conf /etc/apache2/httpd.conf
ENTRYPOINT ["/usr/sbin/httpd","-DFOREGROUND"]

