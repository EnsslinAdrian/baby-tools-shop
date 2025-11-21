# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN python -m pip install -r requirements.txt

# Make port 8025 available to the world outside this container
EXPOSE 8025

# Entrypoint to run the Django development server
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8025"]
