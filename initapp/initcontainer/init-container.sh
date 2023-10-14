#!/bin/sh

# Generate a simple configuration file
echo "ServerName myapp.local" > /config/myapp.conf

# Copy the configuration file to the web-app/config directory
cp /config/myapp.conf /web-app/config/

# Indicate that the init container has completed its task
echo "Init container completed."

# Sleep indefinitely to keep the container running
sleep infinity
