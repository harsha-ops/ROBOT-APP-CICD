FROM python:3.9

USER root

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY *.py /app/

COPY payment.ini /app/

EXPOSE 8080


CMD ["uwsgi", "--ini", "payment.ini"]
