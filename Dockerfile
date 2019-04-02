FROM python:2
WORKDIR /usr/src/app

COPY . .
RUN groupadd -g 1099 airnotifier && useradd -r -u 1099 -g airnotifier airnotifier && pip install --no-cache-dir -r requirements.txt 
USER airnotifier

#  config file (env) before this?

CMD [ "./docker-run.sh" ]


