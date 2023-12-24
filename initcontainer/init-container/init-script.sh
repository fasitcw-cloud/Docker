#!/bin/sh

# Create a data file to be used by the main container
echo "Tech world for you" > /app/data/init-data.txt

# Indicate that the init container has completed its task
echo "Init container completed."

# Sleep indefinitely to keep the container running
sleep infinity
