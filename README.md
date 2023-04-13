# Service Discovery

This project is a Spring Boot application that provides service discovery.

## Dependencies
Before running the Spring Boot project, please ensure that you have the following dependencies installed:

- `Java 17` The source code is written in Java 17, so make sure you have it installed and set up properly on your machine.
- `Maven 3.8+` The project uses Maven to manage dependencies and build the code. You will need to have Maven 3.6 or higher installed on your machine to build the project.
- `Docker` The project is designed to run in Docker containers. You will need to have Docker installed on your machine to create containers of the services described in the docker-compose.yml file.

Please make sure that all of these dependencies are installed and configured correctly before attempting to run the project.

## Running Project
### First time execution
- `docker network create resource-network`
- `mvn clean install`
### Running from Maven
- `mvn spring-boot:run`
### Running from Dockerfile
- `docker build --no-cache -t resource-service-discovery:latest .`
- `docker run -d --env-file .env --name resource-service-discovery -p 8761:8761 --network resource-network resource-service-discovery`

## Cleaning Project and Resources
`mvn clean -U` - Clean project files generated and update dependencies
`docker network rm resource-network` - Delete docker network
