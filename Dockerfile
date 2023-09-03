
FROM python:3.8

ENV PYTHONUNBUFFERED 1


RUN curl -sSL https://install.python-poetry.org | sh
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"
COPY pyproject.toml /
RUN poetry config virtualenvs.create false && poetry install --no-root


RUN mkdir /app
WORKDIR /app


COPY . /app/


CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]
