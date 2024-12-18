# Python image as the base
FROM python:3.11

# setting working directory in the container
WORKDIR /app

# Copying application files to the container
COPY . .

# Installing dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Exposing the default Flask port
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]

