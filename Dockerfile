FROM python:latest

RUN mkdir /app

COPY . /app

WORKDIR /app

CMD export FLASK_APP=app && export FLASK_ENV=development && export FLASK_PORT=5001 && pip install -r requirements.txt && python3 app.py