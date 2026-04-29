# Step 1: Choose a base image
FROM python:3.11-slim
# Step 2: Set the working directory inside the container
WORKDIR /app
# Step 3: Copy requirements first (for better caching)
COPY requirements.txt .
# Step 4: Install dependencies
RUN pip install -r requirements.txt
# Step 5: Copy the rest of the application code
COPY . .
# Step 6: Tell Docker which port the app listens on
EXPOSE 5000
# Step 7: The command to run when the container starts
CMD ["python", "app.py"]
