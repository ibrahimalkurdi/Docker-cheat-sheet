# Docker Image:
This page will help you to customize your own image and push it to Dockerhub.

## Prerequisite:
* After cloning the repository, Be sure you are on the DockerImages directory:
```
cd DockerImages
```
## Docker BUILD:
```
docker build . -t my_first_image
```

## Docker HISTORY:
```
docker history my_first_image:latest
docker run -d --name bob_app -p 5000:5000 my_first_image
```

## Docker TAG:
```
docker tag my_first_image dockerworkshop101k24/my_first_image
docker tag my_first_image dockerworkshop101k24/my_first_image:v.01
```

## Build minimal image by using alpine:
```
docker build . -f Dockerfile_alpine -t my_second_image:v.01
docker history --no-trunc my_alpine:latest
```

## Docker Build cached layers:
Update the Dockerfile_alpine and rebuild with a new tag/image:
```
docker tag my_first_image dockerworkshop101k24/my_first_image:v.02
docker tag my_first_image dockerworkshop101k24/my_first_image_1:v.01
```

## Docker PUSH:
```
docker login my.registry.com:8000
docker login <dockerworkshop101k24>
docker push dockerworkshop101k24/my_second_image:v.01
```
