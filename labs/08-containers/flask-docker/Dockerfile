FROM python:latest
WORKDIR /app

COPY requirements.txt  .
#RUN pip install Flask
RUN pip install -r requirements.txt

COPY app.py .

EXPOSE 5000
ENTRYPOINT ["python3", "app.py"]