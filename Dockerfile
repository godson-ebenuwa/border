FROM python:latest
LABEL authors="godson"
#test
#ENTRYPOINT ["top", "-b"]
WORKDIR /app

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

CMD ["uvicorn", "-m", "http.server", "8000"]