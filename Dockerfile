FROM python:3.8-slim



WORKDIR /app


COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt


COPY . /app


EXPOSE 7755

ENV FLASK_APP=core/server.py
ENV FLASK_ENV=development

CMD ["flask", "run", "--host=0.0.0.0", "--port=7755"]


