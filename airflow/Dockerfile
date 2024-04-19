FROM python:3.9
FROM apache/airflow:2.4.0
COPY requirements.txt .
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt --user