# Use the official Python image from the Docker Hub
FROM python:3.13.0a5-alpine3.19

# Set working directory within the container
WORKDIR /app

# Install Django
RUN pip install django

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 8000 to allow communication to/from the Docker container
EXPOSE 8000

# Command to run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

