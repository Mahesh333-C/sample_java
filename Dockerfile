# Use an official OpenJDK with Maven image
FROM maven:3.8.4-openjdk-17 AS build
WORKDIR /app

# Copy the entire project to the container
COPY . /app

# Build the application
RUN mvn clean package
EXPOSE 8000
# Specify the command to run on container start
CMD ["java", "-jar", "target/spring-boot-hello-world-1.0.jar"]