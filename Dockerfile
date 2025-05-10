FROM python:3.10

# ENV directory /new_directory

# WORKDIR $directory
WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

ENTRYPOINT  ["python", "main.py"]