# Use the official Python image as the base
FROM python:3.11

# Set the working directory in the container
WORKDIR /app

# Copy application files to the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the default Flask port
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]

