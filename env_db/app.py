import os
import psycopg2

# Retrieve database configuration from environment variables
db_host = os.environ.get("DB_HOST")
db_port = os.environ.get("DB_PORT")
db_name = os.environ.get("DB_NAME")
db_user = os.environ.get("DB_USER")
db_password = os.environ.get("DB_PASSWORD")

# Establish a database connection
try:
    connection = psycopg2.connect(
        host=db_host,
        port=db_port,
        database=db_name,
        user=db_user,
        password=db_password,
    )
    cursor = connection.cursor()
    print("Connected to the database!")

    # Your application logic here

    cursor.close()
    connection.close()
except Exception as e:
    print(f"Error connecting to the database: {e}")
