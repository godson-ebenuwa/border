FROM python:3.13.4-slim-bullseye
LABEL authors="godson"
#test
#ENTRYPOINT ["top", "-b"]
WORKDIR /app

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

#CMD ["uvicorn", "-m", "http.server", "8000"]

CMD ["uvicorn", "main.py:app", "--host", "0.0.0.0", "--port", "8000"]