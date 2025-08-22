FROM python:latest
LABEL authors="godson"

#ENTRYPOINT ["top", "-b"]
WORKDIR /app

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]