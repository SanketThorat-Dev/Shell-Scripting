#!/bin/bash

code_clone(){
	echo "Clonoing the Django App......"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_dependencies(){
	echo "Installing dependencies..."
	sudo apt-get install docker.io nginx -y 
}

required_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
 	sudo systemctl restart docker
}

deploy(){
    echo "Building Docker image..."
    docker build -t notes-app .

    
    # Add the command to explicitly start the Django server
   docker run -d -p 8000:8000 notes-app:latest
  # docker-compose up -d
}

echo "**********************Deployment Started************************"

if ! code_clone; then
	echo "The code directory already exists"
	cd django-notes-app
fi

if ! install_dependencies; then 
	echo "Installation Failed"
	exit 1
fi

if ! required_restarts; then
	echo "System Fault Identified"
	exit 1
fi

if ! deploy;then
	echo "Deployment failed, mailing the admin"
	# sendmail
	exit 1
fi

echo "********************Deployment Done**************************"

