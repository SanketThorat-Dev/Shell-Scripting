#!/bin/bash

#This is a program for foor loop

read -p "Enter the number of demo folders that are to be created" num

for((i=1;i<=num;i++))
do
	mkdir $1$i
done
