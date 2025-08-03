# 1. Use official Python image
FROM python:3.11-slim

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy all project files to the working directory
COPY . .

# 4. Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose port (Flask default)
EXPOSE 5000

# 6. Run the Flask app
CMD ["python", "app.py"]
