FROM python:3.9.5-slim
WORKDIR /usr/src/app
COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD ["gunicorn", "-c=gunicorn.config.py", "app:app"]