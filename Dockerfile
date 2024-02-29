FROM openjdk:17
WORKDIR /app
COPY target/*.jar jenkins-automation.jar
ENTRYPOINT ["java", "-jar", "jenkins-automation.jar"]
