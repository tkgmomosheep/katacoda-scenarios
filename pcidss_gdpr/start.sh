#!/bin/sh
docker network create wordpress-network
docker run --name mysql -d -e  MYSQL_ROOT_PASSWORD=admin -e MYSQL_DATABASE=wordpress -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=admin --network=wordpress-network -v db_data:/var/lib/mysql mysql:8
docker run -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_PASSWORD=admin -e WORDPRESS_DB_HOST=mysql:3306 --name wordpress --network=wordpress-network -p 80:80 -v /tmp/html/:/var/www/html -d wordpress
apt update
apt install ca-certificates -y
clear