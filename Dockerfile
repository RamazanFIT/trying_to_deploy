FROM python:latest



WORKDIR /app 

COPY . .

RUN pip install poetry 


WORKDIR /app/MVP-Project-z00help


RUN poetry install





ENTRYPOINT ["sh", "./scripts/launch.sh"]
