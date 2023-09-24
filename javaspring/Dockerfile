# Use the official Ubuntu as a parent image
FROM ubuntu:latest AS build

# Set environment variables for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install necessary packages
RUN apt-get update -y && \
    apt-get install -y openjdk-11-jdk maven && \
    apt-get clean

# Set the JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-arm64

# Add JAVA_HOME to the PATH environment variable
ENV PATH=$PATH:$JAVA_HOME/bin

# Check Java and Maven versions
RUN java -version && mvn -version

# Clean up
RUN apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn clean install
RUN mvn clean package

# Stage 2: Create the final image
FROM openjdk:11-jre-slim

COPY --from=build /app/target/my-java-app-1.0-SNAPSHOT.jar /app/my-java-app.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/my-java-app.jar"]
