# Use a small Linux base image
FROM alpine:latest

# Copy the init script into the container
COPY init-script.sh /usr/local/bin/init-script.sh

# Make the init script executable
RUN chmod +x /usr/local/bin/init-script.sh

# Command to run the init script
CMD ["/usr/local/bin/init-script.sh"]
