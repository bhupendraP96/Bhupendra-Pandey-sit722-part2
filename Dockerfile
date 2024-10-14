FROM python:3.10-slim

WORKDIR /usr/src/app
COPY ./book_catalog/requirements.txt .
RUN pip install -r requirements.txt
COPY ./book_catalog .
CMD uvicorn main:app --host 0.0.0.0 --port $PORT