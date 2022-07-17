FROM mysql:latest
COPY northwind.sql /docker-entrypoint-initdb.d/
RUN ["/usr/local/bin/docker-entrypoint.sh"]
ENV MYSQL_ROOT_PASSWORD=passwd
EXPOSE 3306