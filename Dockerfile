FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine
LABEL version="0.1"
WORKDIR /app/static
COPY /static/style.css .
WORKDIR /app/templates
COPY /templates/index.html .
WORKDIR /app
COPY app.py /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]