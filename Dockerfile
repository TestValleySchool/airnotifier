FROM python:2
WORKDIR /usr/src/app

COPY . .
RUN pip install --no-cache-dir -r requirements.txt && python install.py



#  config file (env) before this?
RUN 

CMD [ "python", "airnotifier.py" ]
