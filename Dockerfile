FROM --platform=linux/amd64 python:3.11.8-slim

WORKDIR /app

# Установка системных зависимостей
RUN apt-get update && apt-get install -y \
    libgomp1 \
    && rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /code/requirements.txt

# Установка зависимостей Python
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /app

# Убедитесь, что у вас есть права на выполнение
RUN chmod +x /app/main.py

CMD ["fastapi", "run", "main.py", "--port", "80", "--proxy-headers"]