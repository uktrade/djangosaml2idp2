FROM python:3.8-alpine

RUN apk add --update \
    build-base libffi-dev openssl-dev \
    xmlsec xmlsec-dev \
  && rm -rf /var/cache/apk/*

RUN pip install --upgrade pip
RUN pip install setuptools wheel
RUN pipx install poetry --python $(which python)
RUN ln -s /root/.local/pipx/venvs/poetry/bin/poetry /usr/local/bin/poetry
RUN poetry install

EXPOSE 8000
CMD python manage.py migrate && python manage.py runserver 0.0.0.0:8000
