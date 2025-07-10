# Use an official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements (if you have one)
# COPY requirements.txt .
# RUN pip install -r requirements.txt

# Install Flask directly (if no requirements.txt)
RUN pip install flask

# Copy your app code
COPY app.py .

# Expose the port Flask runs on
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]