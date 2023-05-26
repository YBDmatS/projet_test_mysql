FROM mysql
ENV MYSQL_ROOT_PASSWORD=rootpass
COPY script.sql /docker-entrypoint-initdb.d