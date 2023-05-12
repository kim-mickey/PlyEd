FROM python:3.11-alpine

WORKDIR /app

# environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED  1

# INSTALL DEPENDECIES
RUN pip install --upgrade pip
COPY ./requirements.txt /app
RUN pip install -r requirements.txt

# copy project from local dir to Image's working directory
copy . /app

EXPOSE 5000
CMD [ "python", "manage.py", "runserver", "0.0.0.0:5000" ]