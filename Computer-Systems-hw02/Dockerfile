# Використовуємо офіційний образ Python
FROM python:3.10

# Встановлюємо робочу директорію в контейнері
WORKDIR /app

# Копіюємо всі файли проекту в контейнер
COPY . .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Відкриваємо порт для FastAPI
EXPOSE 8000

# Запускаємо FastAPI-сервер
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
