FROM mysql:8.0

COPY dump.sql /docker-entrypoint-initdb.d/

ENV MYSQL_ROOT_PASSWORD=P@ssw0rd123

EXPOSE 3306
