FROM openjdk:11
EXPOSE 8080
ARG JAR_FILE

# Add application jar file to the container
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]