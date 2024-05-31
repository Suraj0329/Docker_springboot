#for this the image size is large

#FROM openjdk:11
#EXPOSE 8080
#ARG JAR_FILE
#
## Add application jar file to the container
#COPY ${JAR_FILE} app.jar
#
#ENTRYPOINT ["java", "-jar", "/app.jar"]

#using multistage distroless
# Stage 1: Build stage
FROM ubuntu AS build

# Set the working directory in the container
WORKDIR /app

# Copy the Java source files into the container
COPY . .

# Compile the Java source files
RUN javac Main.java

# Create a JAR file from the compiled classes
RUN jar cvfe app.jar Main Main.class

# Stage 2: Final stage
FROM gcr.io/distroless/java11-debian11

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/app.jar /app/app.jar

# Expose port 8080
EXPOSE 8080

# Specify the command to run the Java application
CMD ["java", "-jar", "app.jar"]


