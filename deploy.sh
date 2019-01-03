#!/bin/bash
for f in _build/*
  do
	#only upload this one file
	if [ "$f" == "main.pdf" ]
	then
 		echo "Uploading $f"
 		curl --ftp-create-dirs -T $f -u $USERNAME:$PASSWORD ftp://ftp.jacobsburley.com/files.jacobsburley.com/$f
	fi
done

