FROM python:3.8
WORKDIR /code
ENV FLASK_APP=app.py
# RUN apk add --no-cache gcc musl-dev linux-headers
RUN apt-get update 
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . .
CMD ["flask", "run"]