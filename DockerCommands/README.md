# Docker Commands:
We will walk through the basic docker commands and will try to give an example for each of them.

## Docker RUN:  

* It will pull the image from dockerhub in case it's not existed in your machine.
```
docker run hello-world 
```

* List Only the running containers:
```
docker ps
```

* List all containers:
```
docker ps -a 
```

* Stop docker container:
```
docker stop <CONTAINER ID/NAMES>
```

* Start docker container:
```
docker start <CONTAINER ID/NAMES>
```

* Remove the stopped docker container:
```
docker rm <CONTAINER ID/NAMES>
docker rm <first 3 letters of the CONTAINER ID>
```

* Remove all stopped docker containers:
```
docker rm $(docker ps -aq)
```

* List docker images:
```
docker images
```

* Pull docker image:
```
docker pull ubuntu
```

* Remove docker image:
```
docker rmi <REPOSITORY/IMAGE ID>
```

* `docker run` will do anything with basic images such as 
`ubuntu` due this image doesn't have any command to execute:
```
docker run ubuntu
docker run ubuntu sleep 30
```

* Attach and Deattach:
```
docker run -d ubuntu sleep 100
docker attache <REPOSITORY/IMAGE ID>
```

* Provide a name for your container:
```
docker run -d --name my_ubuntu_container ubuntu sleep 100 
```

* Get inside docker run:
```
-i, --interactive                    Keep STDIN open even if not attached
-t, --tty                            Allocate a pseudo-TTY
```
```
docker run -it ubuntu bash
docker run -it <CONTAINER ID/NAMES> bash
docker run --rm -it ubuntu bash
```

* Execute commands on a running container:
```
docker exec <CONTAINER ID/NAMES> cat /etc/*release*
```

## Docker TAG:

* `docker run` command with a specified image version:
```
docker run ubuntu:18.04
```

## Docker PORT mapping:
To expose the container to host, we have to bind the local docker port to host post.
```
docker run -d --name my_nginx nginx
docker run -d --name my_nginx_1 -p 8090:80 nginx
```

## Docker Volume mapping:
Docker container doesn't have persistent volume. So in case you don't 
want to lose the data after deleting the container, you have to mount data from host. 
```
docker exec -it my_nginx bash
--> mv /usr/share/nginx/html/index.html /usr/share/nginx/html/index.html.org
--> echo "Hi this is my website" > /usr/share/nginx/html/index.html

docker stop my_nginx
docker rm my_nginx

mkdir /tmp/my-Website
echo "Hi again, this is my website after I stopped the container" > /tmp/my-Website/index.html

docker run -d --name my_nginx -p 8090:80 -v /tmp/my-Website:/usr/share/nginx/html nginx
docker stop my_nginx
docker rm my_nginx

echo "This is my third container" >> /tmp/my-Website/index.html

docker run -d --name my_nginx -p 8090:80 -v /tmp/my-Website:/usr/share/nginx/html nginx
```

## Docker Logging:
```
docker logs my_nginx
docker logs --follow my_nginx
docker logs --follow --tail=20 my_nginx
```
