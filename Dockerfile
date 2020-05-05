FROM mysql

ENV MYSQL_DATABASE restapi

COPY ./Mysql/ /docker-entrypoint-initdb.d/

EXPOSE 3306

FROM python:3.7-slim-stretch

MAINTAINER priyanka piyumahajan24@gmail.com
COPY ./flask_Api /app

WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]

CMD ["main.py"]

EXPOSE 8080
