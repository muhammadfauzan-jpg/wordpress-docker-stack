FROM wordpress:6.8-apache
RUN a2dismod mpm_event
RUN a2dismod mpm_worker
RUN a2enmod mpm_prefork
RUN a2enmod rewrite
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80FROM wordpress:6.8-apache
RUN a2dismod mpm_event
RUN a2dismod mpm_worker
RUN a2enmod mpm_prefork
RUN a2enmod rewrite
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80
