#!/bin/bash

chmod +x rustbot
chmod +x stockfish12

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:./

RESTART="${RESTART:-1800}"

echo "restart period $RESTART"

echo "getting games"

wget https://raw.githubusercontent.com/hyperchessbot/pgnrepo/main/rustbot.pgn

ls -l rustbot.pgn
ls -l book.pgn

echo "appending games to book"

echo $'\n\n' >> book.pgn

ls -l book.pgn

cat rustbot.pgn >> book.pgn

ls -l book.pgn

while true; do
	echo "starting bot"
	./rustbot &
	sleep $RESTART
	echo "shutting down bot"
	kill $!
done
