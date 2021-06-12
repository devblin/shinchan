#!/bin/bash
echo "MAKE SHELL-SCRIPTS GLOBALLY EXECUTABLE\n"
echo "Enter script-name:"

read FILE
FILENAME="${FILE%.*}"

if [ -e "$FILE" ];
then
	chmod +x "$FILE"
	FILENAME="${FILE%.*}"
	sudo cp "$FILE" /usr/bin/"$FILENAME"
	sudo cp "$FILE" /usr/local/bin
	echo "$FILE is now globally executable by using command '$FILENAME'"
else
	echo "Script doesn't exists"
fi
