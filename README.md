# Docker 101 workshop
I made this repository for k24 workshop which is Docker introduction.

## Portable Docker for Linux OS:
These steps will help you to install docker binareis in transient way. 
Once you close the terminal, the docker commands will not be avaliable.

### Pre-Installation:
```
Please shutdown the Docker service in case you have alreay installed it. 
```

### Installation:
1- Clone the repository:
```
git clone https://github.com/ibrahimalkurdi/Docker_workshop.git
```

2- Run the initialization script:
```
cd scripts
sudo ./linux_init.sh
```

3- Source the docker binary path:
```
source linux_paths.sh
```
## Docker installation:
* Linux Docker installation:
https://docs.docker.com/install/linux/docker-ce/ubuntu/

* MAC Docker installation:
https://docs.docker.com/docker-for-mac/install/

* Windows Docker installation:
https://docs.docker.com/docker-for-windows/install/

* Docker compose installation:
https://docs.docker.com/v17.09/compose/install/

* Play with docker:
If you don't want to install docker in your machine, 
you can access the link below and create server which has docker installation 
https://labs.play-with-docker.com/
