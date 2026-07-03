FROM python:3.12-slim

WORKDIR /app
COPY requirements.txt .
COPY devops.py .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD ["python", "devops.py"]