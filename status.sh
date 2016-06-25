#!/bin/bash

# Change the logo color of meta.it-syndikat.org depending of the hackerspace's status

ISITOPEN=$(curl -s https://it-syndikat.org/api/status-s.php)


cd /srv/test.webs.gwrx.at/its-color/

if [ $ISITOPEN == true ]
then
	ln -sf green.png logo.png
else
	ln -sf red.png logo.png
fi


