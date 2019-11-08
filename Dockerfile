# ********************************************
# Dockerfile pour une application python/flask
# ********************************************

FROM python:3.7.5-buster

COPY ./Requirements.txt /app/Requirements.txt

WORKDIR /app

RUN pip install -r Requirements.txt

COPY . /app

EXPOSE 5000

ENTRYPOINT ["python"]

CMD ["server.py"]
