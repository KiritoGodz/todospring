# FROM maven:3.8.7-openjdk-18 AS build

# # Set the working directory to /app
# WORKDIR /app

# # Copy the pom.xml file to the /app directory
# COPY pom.xml /app

# # Run Maven to download the dependencies
# RUN mvn install

# # Copy the rest of the source code to the /app directory
# COPY src /app/src

# # Build the application using Maven
# RUN mvn package

# # Make port 8080 available to the world outside this container
# EXPOSE 8080

# # Run the application when the container launches
# CMD ["java", "-jar", "target/todo-application-0.0.1-SNAPSHOT.jar"]
FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY ./target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080