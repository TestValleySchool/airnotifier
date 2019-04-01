FROM python:2
WORKDIR /usr/src/app

COPY . .
RUN pip install --no-cache-dir -r requirements.txt 


#  config file (env) before this?

CMD [ "./docker-run.sh" ]


