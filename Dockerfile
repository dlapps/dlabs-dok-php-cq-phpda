FROM dreamlabs/php-composer:latest

RUN apt-get update && \
    apt-get install -y graphviz && \
    composer global require mamuz/php-dependency-analysis && \
    ln -s /root/.composer/vendor/bin/phpda /usr/bin/phpda;

ENTRYPOINT ["phpda"]