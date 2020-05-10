FROM python:3.7-slim-stretch
MAINTAINER priyanka Mahajan "piyumahajan24@gmail.com"
COPY ./Flask_Api /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["main.py"]

FROM mysql:5.7
LABEL MAINTAINER="priyanka"
ENV MYSQL_USER="root"
ENV MYSQL_DATABASE="restapi"
ENV MYSQL_ROOT_PASSWORD="priyanka"
COPY ./Mysql/user.sql /docker-entrypoint-initdb.d/
EXPOSE 3306








