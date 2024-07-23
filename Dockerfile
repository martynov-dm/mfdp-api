FROM --platform=linux/amd64 python:3.11.8

WORKDIR /app

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /app

CMD ["fastapi", "run", "main.py", "--port", "80", "--proxy-headers"]