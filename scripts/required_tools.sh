#!/usr/bin/env sh

sudo apt-get update

####### begin oh-my-zsh installation #######
echo "Installing oh my zsh"
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh) -o get-oh-my-zsh.sh
sh -c get-oh-my-zsh.sh
echo "Done with oh my zsh installation"
####### end oh-my-zsh installation #######

####### begin tmux installation #######
echo "Installing tmux"
sudo apt install tmux
echo "Done with tmux installation"
####### end tmux installation #######

####### begin docker installation #######
# uninstall previous docker versions if installed
echo "Installing docker"
echo "Removing previous installation of docker if present"
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do
sudo apt-get purge $pkg;
done
echo "Removing images, containers, and volumes"
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

# install the latest version of docker, includes docker-compose
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

echo "Done with docker installation"
####### end docker installation #######