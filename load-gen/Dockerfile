FROM python:3.10-slim

# Some default values
ENV HOST="http://localhost:8080/" \
    SILENT=0 \
    NUM_CLIENTS=1 \
    ERROR=0 \
    RUN_TIME=0

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY entrypoint.sh /app/

COPY robot-shop.py /app/

RUN chmod +x /app/entrypoint.sh

EXPOSE 8080

CMD [ "/app/entrypoint.sh" ]

