#!/bin/bash

if [[ "$1" == "lecture" ]]; then
	cp $HOME/dotFiles/tex_template/lecture/* .
elif [[ "$1" == "lettre" ]]; then
	cp $HOME/dotFiles/tex_template/lettre/* .
else
	echo "Error: $1 | Template not found."
	echo "Please chose in the following list:"
	echo "  - lecture"
fi
