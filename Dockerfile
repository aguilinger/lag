FROM python:3.6-slim

WORKDIR /lag

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY server.py .

ENV PORT=80
EXPOSE ${PORT}

CMD python server.py --port ${PORT}
