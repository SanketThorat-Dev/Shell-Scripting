#!/bin/bash

#To check conditional statements

echo "This scenario represents the 2025 Ballon dor ceremony"

read -p "Who according to you should have won the Ballon dor 2025 : " player

if [[ "$player" == "Raphinha" || "$player" == "raphinha" ]];
then
	echo "$player is deserving"
elif [[ "$player" == "Dembele" || "$player" == "dembele" ]];
then 
	echo "$player is not much deserving but can be accepted partially"
else 
	echo "It was a roberry"
fi

echo "In the end Messi is the GOAT"
