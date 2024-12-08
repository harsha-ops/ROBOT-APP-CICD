FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY entrypoint.sh /app/

COPY robot-shop.py /app/

RUN chmod +x /app/entrypoint.sh

EXPOSE 8080

CMD [ "/app/entrypoint.sh" ]

