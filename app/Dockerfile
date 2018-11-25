FROM python:3.7
MAINTAINER Aditya Kukde "aditya.kukde@gmail.com"
RUN apt-get update -y
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5002

CMD [ "python", "app.py"]