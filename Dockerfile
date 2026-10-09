FROM wordpress:6.8-apache
RUN a2dismod mpm_event || true && a2dismod mpm_worker || true && a2enmod mpm_prefork && a2enmod rewrite
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80
