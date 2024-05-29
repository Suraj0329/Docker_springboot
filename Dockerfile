FROM openjdk:11
ADD target/springbootdocker.jar springbootdocker.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springbootdocker.jar"]