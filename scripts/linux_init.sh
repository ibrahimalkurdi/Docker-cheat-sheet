#!/bin/bash

# Source Docker binaries: 
source ./linux_paths.sh

# Check if docker binaries exists:
if [[ $(which docker | wc -l) == 0 ]]; then
  cd ../docker/bin
  wget https://download.docker.com/linux/static/stable/x86_64/docker-18.06.0-ce.tgz
fi

# Greate Docker group and add the current user to this group:
if [[ $(grep docker /etc/group | wc -l) == 0 ]]; then
  groupadd -g 999 docker
  usermod -a -G docker $(id -un)
fi

# Run Docker Daemon:
if [[ $(ps -ef | grep dockerd | grep -v grep | wc -l) == 0 ]]; then
  if [[ $(id -un) == "root" ]]; then
    dockerd > /dev/null 2>&1 &
  else
    echo "[ERROR]: Please run the script with \"sudo\" command."
  fi
else
  echo "[ERROR]: Dockerd has already running in your local machine."
fi
