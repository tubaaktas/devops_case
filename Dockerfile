# syntax=docker/dockerfile:1

FROM python:3.10-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
EXPOSE 5000
CMD [ "python3", "-m" , "gunicorn", "main:app", "--bind=0.0.0.0:5000"]
#http://127.0.0.1:5000/