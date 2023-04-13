FROM openjdk:17.0.1-jdk-slim-buster

WORKDIR /app
COPY target/service-discovery-1.0.0.jar resource-service-discovery.jar
EXPOSE 8761

CMD ["java", "-jar", "-Dspring.profiles.active=prod", "resource-service-discovery.jar"]
