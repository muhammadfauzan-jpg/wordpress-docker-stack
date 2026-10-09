FROM wordpress:6.8-apache
RUN echo '#!/bin/bash\nrm -f /etc/apache2/mods-enabled/mpm_event.* /etc/apache2/mods-enabled/mpm_worker.*\na2enmod mpm_prefork rewrite\necho "upload_max_filesize = 64M\npost_max_size = 64M\nmemory_limit = 256M" > /usr/local/etc/php/conf.d/uploads.ini\nexec docker-entrypoint.sh apache2-foreground' > /start.sh && chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
