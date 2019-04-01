#!/bin/sh


# bootstrap if mongo database not initialised
python install.py --mongohost=mongo 

if [ ! -f cert.pem ]; then
	# bootstrap keys
	openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 3650 -nodes	
fi

# run
python airnotifier.py --mongohost=mongo --logging=debug
