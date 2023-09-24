# Use a Python image as the base
FROM ubuntu:latest

# Set environment variables for the database configuration
ARG DB_HOST=127.0.0.1
ARG DB_PORT=5432
ENV DB_USER=myuser
ENV DB_PASSWORD=mysecretpassword

ARG NAME=https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_linux_arm64.zip

RUN apt-get update && apt-get install wget -y

RUN wget ${NAME} --password {PASS}

#### ----> wget https://releases.hashicorp.com/terraform/1.5.3/terraform_1.5.3_linux_arm64.zip
# Install application dependencies
# RUN pip install psycopg2

# Copy your Python application code into the image
COPY app.py /app/app.py

# Set the working directory
WORKDIR /app

LABEL maintainer="fasi ahmed, fasiahmed655@gmail.com"

# Define the command to run your application
# CMD ["python", "app.py"]

RUN apt-get install nano -y

RUN mkdir /home/volume1/
RUN mkdir /home/volume2/
RUN mkdir /home/bindmount1/
RUN mkdir /home/bindmount2/
RUN useradd -ms /bin/bash fasi
USER fasi





