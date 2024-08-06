# Use a Python base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

##Copy the Flask app files to the container
COPY app.py ./

# Install Flask and any other dependencies
RUN pip install --no-cache-dir flask

# Expose the Flask app port
EXPOSE 5000

# Set the Flask app entrypoint command
CMD ["python", "app.py"]

