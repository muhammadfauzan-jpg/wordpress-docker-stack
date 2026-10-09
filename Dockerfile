FROM wordpress:6.8-apache
ARG CACHE_BUST=20261009_1037
RUN rm -f /etc/apache2/mods-enabled/mpm_* && a2enmod mpm_prefork rewrite && ls /etc/apache2/mods-enabled/ | grep mpm
RUN a2enmod mpm_prefork rewrite
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80
