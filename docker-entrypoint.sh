#!/bin/sh

PROFILENAME=profile

if [ "$1" = "maas-cli" ]; then
	shift

	if [ ! -f $HOME/.maascli.db ]; then
		echo "Logging into $MAAS_URL"
		echo $MAAS_APIKEY|maas login $PROFILENAME $MAAS_URL - 
	fi

	exec /usr/bin/maas $PROFILENAME "$@"
fi

exec "$@"
