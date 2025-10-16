#!/bin/bash

<<task
Deploy a Django app
and handle the code for errors
task

code_clone() {
    echo "Cloning the Django app....."
    if [ -d "django-notes-app" ]; then
        echo "Directory already exists"
    else
        git clone https://github.com/Sanjay-Shr/django-notes-app.git
    fi
}

install_requirements() {
    echo "Installing dependencies"
    sudo apt-get update
    sudo apt-get install -y docker.io nginx docker-compose
}

required_restarts() {
    echo "Stopping host nginx to free port 80..."
   # sudo systemctl stop nginx
    #sudo systemctl disable nginx


    echo "Setting up docker permissions..."
    #sudo systemctl enable docker
    #sudo systemctl restart docker
    sudo chown $USER /var/run/docker.sock
}

deploy() {
    cd django-notes-app || exit
    echo "Building Docker images and starting containers..."
    docker build -t notes-app .
    docker-compose up -d
}

echo "********** DEPLOYMENT STARTED **********"
code_clone
if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi
if ! required_restarts; then
	echo "System fault identified"
	exit 1
fi
if ! deploy; then 
	echo "Deployment failed, mailing admin"
	# sendmail
	exit 1
fi

echo "********** DEPLOYMENT ENDED **********"

