FROM wordpress:6.8-apache
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/binlentrypoint.sh"]
EXPOSE 80
