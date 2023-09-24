# Use a Maven image for building the application
FROM maven:3.8.4-openjdk-11 AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the project's POM file
COPY pom.xml .

# Download and cache dependencies (if any)
RUN mvn dependency:go-offline

# Copy the entire project source code into the container
COPY src ./src

# Build the application
RUN mvn package

# Debugging step: List the contents of the /app/target directory
# RUN ls -l /app/target

# Stage 2: Create the final image
FROM tomcat:9.0-jre11

# Copy the WAR file from the builder stage to Tomcat's webapps directory
COPY --from=builder /app/target/my-java-app-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/

# Expose the Tomcat port (default is 8080)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
