FROM python:3.8-slim-buster

EXPOSE 8080

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

 COPY . /app

RUN pip3 install -r requirements.txt

CMD [ "python","app.py" ]