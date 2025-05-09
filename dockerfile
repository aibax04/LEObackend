# Use the official Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (same as Flask default)
EXPOSE 5000

# Set environment variables (optional)
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run Flask app
CMD ["flask", "run"]
