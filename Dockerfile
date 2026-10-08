FROM wordpress:6.8-apache
RUN a2dismod mpm_event && a2enmod mpm_prefork
EXPOSE 80
