# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/devops-project-samples-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose port 7070 (default Spring Boot port)
EXPOSE 7070

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
