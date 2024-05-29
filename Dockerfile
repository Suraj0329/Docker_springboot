FROM openjdk:11
ADD target/springbootDocker.jar springbootDocker.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springbootDocker.jar"]