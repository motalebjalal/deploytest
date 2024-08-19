# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/deploytest-0.0.1-SNAPSHOT.jar deploytest.jar

# Expose the port on which the application will run
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "deploytest.jar"]


