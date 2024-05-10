FROM python:3.12.2-slim

WORKDIR /app

ADD . /app/

EXPOSE 8000

COPY requirements.txt /app

RUN pip3 install -r requirements.txt --no-cache-dir

COPY . /app

ENTRYPOINT ["python"]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]