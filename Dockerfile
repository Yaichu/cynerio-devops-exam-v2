FROM python:3.9.0-alpine

WORKDIR /app
COPY ./pyproject.toml .

# Install required dependencies for running poetry
RUN pip install -U pip setuptools
RUN apk update && apk add build-base libffi-dev openssl-dev
RUN pip install poetry

# Install pyproject.toml
RUN poetry install

COPY ./src/api.py .

# Run th app
CMD ["poetry", "run", "python", "./api.py"]