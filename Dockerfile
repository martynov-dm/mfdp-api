FROM python:3.9

WORKDIR /app

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./app /app

CMD ["fastapi", "run", "main.py", "--port", "8002", "--proxy-headers"]