# CCS3308 Virtualization and Containers Assignment

## Application Description
This project deploys a Flask web application and MySQL database using Docker containers.

## Deployment Requirements
- Ubuntu Linux
- Docker Engine
- Internet connection

## Network Details
Network Name: app-network

## Volume Details
Volume Name: mysql-data

Purpose: Stores MySQL data persistently.

## Container Configuration

### flask-container
- Image: flask-app
- Port: 5000

### mysql-db
- Image: mysql:8
- Port: 3306

## Container List

1. flask-container - Web Application
2. mysql-db - Database Server

## Instructions

Prepare:

```bash
./prepare-app.sh
```

Start:

```bash
./start-app.sh
```

Stop:

```bash
./stop-app.sh
```

Remove:

```bash
./remove-app.sh
```

## Access

http://localhost:5000

## Example Workflow

```bash
./prepare-app.sh
./start-app.sh
```

Open browser:

http://localhost:5000

```bash
./stop-app.sh
./remove-app.sh
```
