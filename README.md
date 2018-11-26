# Bucket List Minikube app
This is a simple python web application created with FLASK and MYSQL. 

### Features available
 * User can signup for an account 
 * User can signin with his credentials 
 * User can log out

### Features to be implemented
 * User can add a bucket list of items
 * User can rate the list and sort with priority 
 * Users can add text and images 

### Deployment 

This Web Application is deployed as 2 components available as docker images: 
* Database - MYSQL database  
* Application - Python Flask Web app

### Known Issues and Bugs
* On signup page after pressing the signup button, the page does not redirect to home page. But the user is created. You can press Signin button and sign in using the created user.  
* All the scripts should run from minikube-deploy folder to avoid permission issues. 
* Use .sh files instead of bash for Windows powershell   
* The application is tested on a Windows 10 machine with virtual box, but it should run without any issues on Linux or MacOS. 

## Installation

The best way to run this application locally is via Minikube.

### Before you begin

* Install a Git client to obtain the sample code.
* Install [Python](https://www.python.org/downloads/) (Only required for testing).
* Install a [Docker](https://docs.docker.com/engine/installation/) engine.
* Install [Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/).

## Deployment steps

1. Install docker and minikube.
1. Install VirtualBox (Or enable Hyper-V for windows 10).
1. `git clone` the following project:
    [Bucket List WebApp](https://github.com/aditya-kukde/minikube-deploy.git)   
1. Run the following commands to initialize and start the minikube cluster on a single node with virtualbox
```shell
cd minikube-deploy
.\scripts\init.bash
```
5. Run the following command to build docker images and publish to minikube repo
```shell
.\scripts\build.bash
```

6. Finally Run the publish command to create service and deployment for application and database on kubernetes
```shell
.\scripts\deploy.bash
```

7. To run the application execute the following commands
```shell
.\scripts\run.bash
```


