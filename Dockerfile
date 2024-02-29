# Use an official OpenJDK runtime as a base image
FROM openjdk:17

ARG JAR_FILE=target/*.jar

# Copy the packaged JAR file into the container at /app
COPY ${JAR_FILE} app.jar

# Specify the command to run on container start
ENTRYPOINT ["java", "-jar", "/app.jar"]
