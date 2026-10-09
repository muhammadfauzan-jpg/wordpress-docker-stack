#!/bin/bash
rm -f /etc/apache2/mods-enabled/mpm_event.* /etc/apache2/mods-enabled/mpm_worker.*
a2enmod mpm_prefork rewrite > /dev/null 2>&1
echo "ServerName localhost" >> /etc/apache2/apache2.conf 2>/dev/null || true
exec docker-entrypoint.sh apache2-foreground
