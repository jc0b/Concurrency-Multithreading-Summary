#!/bin/bash
for f in _build/*
  do
	#only upload this one file
	if [ "$f" == "main.pdf" ]
	then
 		echo "Uploading $f"
 		curl -v --ftp-create-dirs -m 60 -T $f -u $USERNAME:$PASSWORD ftp://ftp.jacobsburley.com/files.jacobsburley.com/$f
	fi
done

