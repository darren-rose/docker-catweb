FROM alpine:latest

RUN apk add --update py2-pip

COPY requirements.txt /usr/src/app/

RUN pip install --no-cache-dir -r /usr/src/app/requirements.txt

COPY app.py /app

COPY templates/index.html /app/templates/

EXPOSE 5000

CMD ["python", "/app/app.py"]


