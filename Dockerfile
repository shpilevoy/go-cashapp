FROM postgres

ENV POSTGRES_DB=cashapp
ENV POSTGRES_USER=cashapp
ENV POSTGRES_PASSWORD=securepassword

ADD init.sql /docker-entrypoint-initdb.d/
