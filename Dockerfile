FROM python:latest
LABEL authors="godson"

#ENTRYPOINT ["top", "-b"]
WORKDIR /app

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt