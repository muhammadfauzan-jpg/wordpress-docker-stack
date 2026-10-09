FROM wordpress:6.8-apache
ARG CACHE_BUST=999
RUN rm -f /etc/apache2/mods-enabled/mpm_event.* /etc/apache2/mods-enabled/mpm_worker.*
RUN a2enmod mpm_prefork rewrite
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80
