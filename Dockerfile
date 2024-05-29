FROM openjdk:11
ADD target/sringboot_docker.jar springboot_docker.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springboot_docker.jar"]