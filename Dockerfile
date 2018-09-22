FROM dreamlabs/php-composer:latest

RUN composer global require mamuz/php-dependency-analysis && \
    ln -s /root/.composer/vendor/bin/phpda /usr/bin/phpda;

ENTRYPOINT ["phpda"]