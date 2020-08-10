# Pull base image
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

# Now copy in our code, and run it
COPY . /code/
EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]