FROM wordpress:6.8-apache
RUN a2dismod mpm_event
RUN a2dismod mpm_worker
RUN a2enmod mpm_prefork
RUN a2enmod rewrite
EXPOSE 80
