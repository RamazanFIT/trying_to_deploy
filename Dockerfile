FROM python:latest



WORKDIR /app 

COPY . .

RUN pip install poetry 


WORKDIR /app/MVP-Project-z00help


RUN poetry install





CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:2000"]
