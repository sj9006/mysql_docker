FROM mysql:latest
ENV MYSQL_ROOT_PASSWORD password 
COPY /root/mysqlimage/db-samples/mysql /var/lib/mysql
ADD jsp_backup.sql /docker-entrypoint-initdb.d

EXPOSE 3306