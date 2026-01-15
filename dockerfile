# Use official Python runtime as base image
FROM python:3.9-slim

# Set working directory in container
WORKDIR /app

# Copy the Python file to the container
COPY auto.py /app/

# Set environment variable to ensure Python output is not buffered
ENV PYTHONUNBUFFERED=1

# Create a simple entrypoint script
RUN echo '#!/bin/bash\npython auto.py' > /app/entrypoint.sh && chmod +x /app/entrypoint.sh

# Run the Python script
CMD ["python", "auto.py"]
