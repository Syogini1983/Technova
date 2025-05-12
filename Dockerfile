# Use a lightweight Python base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the script into the container
COPY app.py .

# Run the Python script
CMD ["python", "app.py"]
