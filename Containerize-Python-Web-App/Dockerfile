FROM python:latest

RUN mkdir /build
WORKDIR /build

COPY pyweb/ /build

RUN pip install -r requirements.txt

CMD ["python", "pyweb.py"]