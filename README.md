# web_test
This is a test of web app 

## Getting Started
### Install Docker
#### Mac
https://docs.docker.com/docker-for-mac/

#### Windows
https://docs.docker.com/docker-for-windows/

### Create circleCI account
#### Setup
You will need a github account to login into CircleCI and add a project. After adding the pproject, you need to add two variables into your CircleCI 
project settings. These two variables are: DOCKER_USER and DOCKER_PASS. These are the user name and password you use to push images to your dockerhub account.

### Pull docker image and run it locally
docker login
docker pull sxie2004/web_test
docker run -p 8000:8000/tcp sxie2004/web_test

You should see the sample site running on port 8000.  You should see "Hello world!"

### how to shut down 
Usage:  docker stop [OPTIONS] CONTAINER
