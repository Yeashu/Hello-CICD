FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt && useradd --system --uid 10001 appuser
COPY app ./app
USER 10001
EXPOSE 5001
CMD ["gunicorn", "--bind", "0.0.0.0:5001", "app.app:app"]
