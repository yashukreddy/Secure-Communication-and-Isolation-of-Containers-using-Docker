#building an image from a Dockerfile
docker build -t <image-name > . 

#Creating and running a container of an image file
docker run -dit --name <container-name > <image-name >

#Creating a network with default driver bridge
docker network create <network-name > --driver bridge

#Creating a container to a network on an image
docker run -dit --name <container-name > --network <network-name > <image-name >

#To inspect a networok whether containers are attached or not and also to know the properties of the network
docker inspect <network-name >

#Initiating basic communication from one conatainer to another
docker attach <container-name >

#To view all container, images, networks
docker ps -a
docker images
docker network ls

#To remove an image, container, network
docker image rm <image-id or name >
docker container rm <container-id or name >
docker network rm <network-id or name >