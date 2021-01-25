FROM continuumio/miniconda:4.7.12

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /code


COPY dev-env.yml .

RUN conda env create -q -n dev_env -f dev-env.yml

RUN apt-get update
RUN apt-get -y install curl

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | POETRY_VERSION=1.1.4 python
WORKDIR /code
ENV PATH "/root/.poetry/bin:${PATH}"

SHELL ["conda", "run", "-n", "dev_env", "/bin/bash", "-c"]

COPY poetry.lock .
COPY pyproject.toml .
COPY setup.cfg .

RUN poetry install --no-root

COPY backend /code/backend

RUN poetry install

CMD uvicorn --host=0.0.0.0 backend.main:app