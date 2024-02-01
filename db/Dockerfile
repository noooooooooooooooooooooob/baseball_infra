# Dockerfile for PostgreSQL Database
FROM postgres:latest

COPY init.sql /docker-entrypoint-initdb.d/

# Schedule daily backups at 12:00 and 00:00
RUN echo '0 0,12 * * * /usr/bin/pg_dumpall -U postgres | gzip > /var/lib/postgresql/backups/backup_$(date +\%Y\%m\%d\%H\%M\%S).sql.gz' > /etc/cron.d/postgresql_backup
RUN chmod 0644 /etc/cron.d/postgresql_backup
RUN crontab /etc/cron.d/postgresql_backup
CMD ["cron", "-f"]