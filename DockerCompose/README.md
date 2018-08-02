# Docker-compose:
We will walk through this page with the basic docker-compose commands

## Prerequisite:
* Please go back to the installation page in case you haven't install docker-compose yet.
* Change your current directory to the docker-compose configuration.
```
cd DockerCompose
```
* Created the needed diretories for permenent data (web-app + db):
```
sudo mkdir -p /data/www /data/mysql
sudo chown 33:33 /data/www
sudo chown 999:999 /data/mysql
```

## Docker-compose commands:
```
docker-compose up                     # initialize and start up containers
docker-compose up -d -f <file>        # start containers in background
docker-compose up -d --build          # force rebuild of Dockerfiles
docker-compose up -d --force-recreate # Delete and create containers.
docker compose stop                   # stop containers
docker-compose start                  # start stopped containers
docker compose down                   # remove containers
dokcer-compose up -d <service>        # Start specifc service container/s
dokcer-compose start <service>        # Start specifc stopped service container/s
```
