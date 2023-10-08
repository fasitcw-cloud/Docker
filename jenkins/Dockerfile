# Use the official Jenkins LTS image from Docker Hub
FROM jenkins/jenkins:lts

# Skip the initial setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false


# Set Jenkins admin user and password (change these values)
ENV JENKINS_USER=admin
ENV JENKINS_PASS=admin



# Copy custom configuration scripts (if needed)
# COPY scripts/ /usr/share/jenkins/ref/init.groovy.d/

# Install additional tools, if necessary (e.g., Terraform, Azure CLI)
# RUN apt-get update && apt-get install -y terraform

# Expose ports for Jenkins web interface and JNLP agents
EXPOSE 8080
EXPOSE 50000

# Start Jenkins
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war"]
