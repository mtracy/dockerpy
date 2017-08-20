FROM python:3

ARG APP_NAME=myapp

WORKDIR /usr/src/$APP_NAME

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./main.py" ]
