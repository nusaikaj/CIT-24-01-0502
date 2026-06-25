#!/bin/bash

docker rm -f flask-container mysql-db

docker network rm app-network

docker volume rm mysql-data

docker rmi flask-app

echo "Application removed."
