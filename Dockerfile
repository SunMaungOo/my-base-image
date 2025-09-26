FROM python:3.12-alpine

WORKDIR /opt/database-dataset

RUN apk add --no-cache gcc musl-dev g++ unixodbc-dev 

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
