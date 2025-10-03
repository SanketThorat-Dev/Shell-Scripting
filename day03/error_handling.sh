#!/bin/bash

#Error is handled using if statement

create_directory(){
	mkdir demo
}

if ! create_directory;then
	echo "The directory was not created as it alreday exists"
	exit 1
fi

echo "The directory is been created"
