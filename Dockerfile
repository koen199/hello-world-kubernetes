# syntax=docker/dockerfile:1

FROM python:3.7.9

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
EXPOSE 5000
ENTRYPOINT [ "python", "./app.py"]