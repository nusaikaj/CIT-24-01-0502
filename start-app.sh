#!/bin/bash

echo "Starting MySQL..."

docker run -d \
--name mysql-db \
--network app-network \
-e MYSQL_ROOT_PASSWORD=root123 \
-v mysql-data:/var/lib/mysql \
--restart unless-stopped \
mysql:8

echo "Building Flask Image..."

docker build -t flask-app ./app

echo "Starting Flask Container..."

docker run -d \
--name flask-container \
--network app-network \
-p 5000:5000 \
--restart unless-stopped \
flask-app

echo "Application available at:"
echo "http://localhost:5000"
