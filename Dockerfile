FROM openjdk:11
ADD target/springboot_docker.jar springboot_docker.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springboot_docker.jar"]