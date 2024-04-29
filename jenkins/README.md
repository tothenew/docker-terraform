# Jenkins Dockerized Environment

This repository contains a Docker Compose configuration for setting up a Jenkins environment along with additional services like Docker-in-Docker (DinD), SonarQube, PostgreSQL, and pgAdmin.

## Prerequisites
* Docker Engine
* Docker Compose

## Usage

1. Navigate to the cloned repository

```sh
cd jenkins
```

2. Start the Jenkins environment using Docker Compose

```sh
sudo docker-compose up -d
```

3. Access Jenkins at http://localhost:8080

## Services

### Jenkins 
* Dockerfile located at jenkins/Dockerfile
* Plugins installed based on plugins.yml
* Configuration defined in jenkins-config.yaml

### Docker Agent
* Image: docker:dind
* Allows running Docker commands within Jenkins pipeline
* Volume mounts for Jenkins data and Docker certificates

### SonarQube
* Image: sonarqube:latest
* Port: 9000
* Configuration stored in volumes

### PostgreSQL
* Image: postgres
* Database for SonarQube
* Volume mounts for data storage

### pgAdmin
* Image: dpage/pgadmin4
* Port: 8888
* Web-based interface for PostgreSQL management
* Default credentials:
  * Username: user-name@domain-name.com
  * Password: strong-password

## Configuration

### Jenkins Configuration
* Plugins listed in plugins.yml file
* Configuration settings in jenkins-config.yaml

### SonarQube Configuration
* Default username and password for SonarQube: sonar / sonar
* JDBC settings in docker-compose.yml  

## Networking
All services connected to the sonarnet bridge network for communication.

## Volumes
Volumes defined for persistent storage of Jenkins data, SonarQube configuration, SonarQube data, PostgreSQL data, pgAdmin data, and Docker certificates.

## License
This project is licensed under the MIT License.