# Use an Alpine-based Python image for a smaller footprint
FROM python:3.8-alpine

# Set the working directory
WORKDIR /app

# Copy the Python script into the container
COPY weather.py .

# Install the requests library
# We use --no-cache to keep the image size down
RUN pip install --no-cache-dir requests

# Command to run the script
CMD ["python", "weather.py"]

