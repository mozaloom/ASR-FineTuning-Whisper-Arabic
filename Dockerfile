FROM python:3.12.3-slim

# Set working directory in the container
WORKDIR /app

# Install system dependencies needed for audio processing
RUN apt-get update && apt-get install -y \
    libsndfile1 \
    ffmpeg \
    git \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN mkdir -p webapp/uploads

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV FLASK_APP=webapp/app.py

EXPOSE 5000

CMD ["python", "webapp/app.py"]