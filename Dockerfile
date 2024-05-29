FROM openjdk:11
ADD target/sringboot_docker.jar sringboot_docker.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "sringboot_docker.jar"]