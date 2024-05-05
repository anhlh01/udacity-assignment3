FROM python:3.10-slim-buster

WORKDIR /src

COPY analytics/requirements.txt requirements.txt

# Update the local package index with the latest packages from the repositories
RUN apt update

# Install a couple of packages to successfully install postgresql server locally
RUN apt install build-essential libpq-dev -y

# Update python modules to successfully build the required modules
RUN pip install --upgrade pip setuptools wheel

RUN pip install -r requirements.txt

COPY . .
ENV DB_USERNAME=myuser
ENV DB_PASSWORD=${POSTGRES_PASSWORD}
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

EXPOSE 5153

COPY ./analytics .

CMD python app.py