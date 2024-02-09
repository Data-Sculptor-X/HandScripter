# pull official base image
FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN pip install --upgrade pip
WORKDIR /HandScripter
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . /HandScripter/
RUN python manage.py collectstatic --no-input
