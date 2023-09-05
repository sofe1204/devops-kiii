# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /

# Copy the compiled Spring Boot JAR file into the container
COPY /demo-0.0.1-SNAPSHOT.jar /demo-0.0.1-SNAPSHOT.jar

# Expose the port that your Spring Boot application will run on
EXPOSE 4422

# Specify the command to run your Spring Boot application
CMD ["java", "-jar", "/demo-0.0.1-SNAPSHOT.jar"]
