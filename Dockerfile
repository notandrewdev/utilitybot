FROM python:3.6-onbuild

MAINTAINER utilitybot

ADD utilitybot-dev.py /

ADD /cogs /

ADD /events /

COPY requirements.txt .

RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]

CMD ["./utilitybot-dev.py" ]