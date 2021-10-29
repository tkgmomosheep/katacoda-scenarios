#!/bin/sh

docker network create wordpress-network

echo "Starting MySQL to be used for wordpress"
docker run --name mysql -d -e  MYSQL_ROOT_PASSWORD=12345 -e MYSQL_DATABASE=wordpress -e MYSQL_USER=wordpress -e MYSQL_PASSWORD=12345 --network=wordpress-network -v db_data:/var/lib/mysql mysql:8

echo "MySQL ready..."
docker run -e WORDPRESS_DB_USER=wordpress -e WORDPRESS_DB_PASSWORD=12345 -e WORDPRESS_DB_HOST=mysql:3306 --name wordpress --network=wordpress-network -p 10080:80 -v /tmp/html/:/var/www/html -d wordpress
