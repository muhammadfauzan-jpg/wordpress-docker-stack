FROM wordpress:6.8-apache
RUN echo '#!/bin/bash\nrm -f /etc/apache2/mods-enabled/mpm_event.* /etc/apache2/mods-enabled/mpm_worker.*\na2enmod mpm_prefork rewrite\n exec docker-entrypoint.sh apache2-foreground' > /start.sh && chmod +x /start.sh
ENTRYPOINT ["/start.sh"]
