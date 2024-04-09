# Use a base image with JDK 21
FROM eclipse-temurin:21-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file
COPY target/*.jar app.jar

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
