FROM python:3.9.6

COPY . /dockerexample

COPY ./requirements.txt /dockerexample/requirements.txt

WORKDIR /dockerexample

EXPOSE 5000:5000

RUN pip install -r requirements.txt

CMD ["python","app.py"]
