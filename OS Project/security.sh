#To run a container as a user
docker run -u user -it <image-id or name >

# Running a container as a user and changing the privileges
docker run -u user -it --security-opt=no-new-privileges <image-id >

#Removing all linuc capabilities and enable only the ones which we want to be accessed by the container
docker run --cap-drop all --cap-add <capabilities > -it -u user <image-id >

#Changing file system access to read-only
docker run --read-only -u user -it <image-id >

#The above same can also be done for a root user
docker run --read-only -it <image-id >

#Creation of temporary directory to write an modify data in a read-only file system
docker run --read-only --tmpfs /<temp-directory-name > -it <image-id >