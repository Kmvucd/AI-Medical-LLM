FROM python:3.10-slim-buster

EXPOSE 8080

RUN apt-get update && apt-get install -y \
    build-essential \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

# Run flask app
CMD [ "python","app.py" ]