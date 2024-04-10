#!/bin/bash

if [[ "$1" == "lecture" ]]; then
	cp $HOME/dotFiles/tex_template/lecture/* .
elif [[ "$1" == "lettre" ]]; then
	cp $HOME/dotFiles/tex_template/lettre/* .
elif [[ "$1" == "homework" ]]; then
	cp $HOME/dotFiles/tex_template/homework/* .
else
	echo "Error: $1 | Template not found."
	echo "Please chose in the following list:"
	echo "  - lecture"
	echo "  - lettre"
	echo "  - homework"
fi
