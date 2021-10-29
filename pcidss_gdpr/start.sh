#!/bin/sh

echo "Starting MySQL to be used for wordpress"
docker run --name mysql-host -e MYSQL_ROOT_PASSWORD=admin -d mysql:5.7

clear
echo "MySQL ready..."

docker network create wordpress-network


docker run --rm -d --name wordpress -v $PWD/wordpress:/wordpress  --link mysql-host:mysql -p 80:80 wordpress