#!/bin/bash

read -p "Enter a username : " user

echo "You entered $user"

sudo useradd -m $user

echo "$user added as a new user"
