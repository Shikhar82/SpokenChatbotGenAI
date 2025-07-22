FROM python:3.12-slim

WORKDIR /app

# Copy all files
COPY . .

# Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Expose Streamlit port
EXPOSE 8501

# Run the chatbot app
CMD ["streamlit", "run", "chatbot_ui.py", "--server.port=8501", "--server.headless=true"]

Step 2: (Optional but Ideal) Add .dockerignore
__pycache__/
*.pyc
*.log
venv/
