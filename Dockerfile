# Use the official Python image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the current directory contents into the container
COPY . .

# Expose the port that the application will run on
EXPOSE 5000

EXPOSE 8080

EXPOSE 8000

EXPOSE 9900

EXPOSE 5413

ADD https://terraform.comd

ENTRYPOINT dev.sh

COPY . /tmp/fasi
# Define the command to run the application
CMD ["python", "app.py"]

