FROM python:3.11-slim
WORKDIR /app

# Copy and install dependencies first to leverage Docker's layer caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Corrected CMD: Must be on one line and use double quotes
CMD ["python", "app.py"]
