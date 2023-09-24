FROM python:3.9

# Set the working directory
WORKDIR /app

# Install Flask
RUN pip install Flask

# Copy your Flask app to the container
COPY app.py .

COPY startup.sh /home/startup.sh
# Set the default command to run the Flask app
ENTRYPOINT ["python"]
CMD ["--version"]