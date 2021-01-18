#!/bin/bash

chmod +x rustbot
chmod +x stockfish12

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./

RESTART="${RESTART:-1800}"

echo "restart period $RESTART"

while true; do
	echo "starting bot"
	./rustbot &
	sleep $RESTART
	echo "shutting down bot"
	kill $!
done
