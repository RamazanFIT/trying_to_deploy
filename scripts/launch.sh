source /opt/venv/bin/activate

# Установим зависимости из файла pyproject.toml с помощью Poetry
poetry install --no-root

# Создадим и применим миграции Django
python manage.py migrate

# Запустим сервер Django
python manage.py runserver 0.0.0.0:8000