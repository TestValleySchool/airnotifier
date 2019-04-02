#!/bin/sh

ping -c 5 mongo

# bootstrap if mongo database not initialised

python is-db-init.py

if [ $? -ne 0 ]; then
	python install.py --mongohost=mongo 
fi

if [ ! -f cert.pem ]; then
	# bootstrap keys
	openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 3650 -nodes	
fi

# run
python airnotifier.py --mongohost=mongo --logging=debug
