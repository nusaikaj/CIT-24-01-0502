#!/bin/bash

echo "Preparing resources..."

docker network create app-network

docker volume create mysql-data

echo "Done."
