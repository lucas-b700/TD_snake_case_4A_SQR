FROM python:3.10
RUN apt-get update
RUN apt-get install python3-pip -y
RUN pip install flask

COPY . .

ENV FLASK_APP=main.py
ENV FLASK_DEBUG=True
EXPOSE 5000

CMD ["flask", "run"]
