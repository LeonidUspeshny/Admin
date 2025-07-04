FROM python:3.10-slim
# Устанавливаем обновления и необходимые модули

# Обновление pip python
RUN pip install --upgrade pip
WORKDIR /app
# Установка пакетов для проекта
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]