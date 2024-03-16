# Use and existing docker image as a base
FROM python:3.9.2-buster

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 8501

COPY . /app

ENTRYPOINT ["streamlit","run"]

CMD ["app.py"]
# CMD ["python" "./app.py"]