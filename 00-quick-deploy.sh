#!/bin/bash

# ---------------------------------------------------------------------------- #
# ALLOW $USER TO EXECUTE SUDO WITHOUT REQUIRING PASSWORD EVERY TIME

echo "Logged in username: $USER"
echo "Priming $USER for SUDO..."
su - $USER
sudo bash -c 'echo "'$USER' ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/99_sudo_include_file'
sudo visudo -cf /etc/sudoers.d/99_sudo_include_file
su - $USER
cd ~/

# ---------------------------------------------------------------------------- #
# INSTALL DOCKER-COMPOSE + PORTAINER + ETC FROM REPO

mkdir -p ~/quick-deploy && \
cd ~/quick-deploy && \
git clone https://github.com/bmcgonag/docker_installs.git && \
cd ./docker_installs && \
sudo chmod a+x ./install_docker_nproxyman.sh && \
echo "Manual input will briefly be required. Once installation however starts with the spinning wheel observable, you can make yourself some tea or coffee as this part is automated..." && wait 4s
wait 1s && \
./install_docker_nproxyman.sh


# ---------------------------------------------------------------------------- #
# PULL QUICK-DEPLOY REPO AND RUN BASH SCRIPTS

git clone https://github.com/ttechhome87/quick-ddeploy.git && \
cd ~/quick-ddeploy && \
sudo chmod a+x ./*.sh && \
## WHEEL
echo "'00-quick-deploy.sh' successfully finished. Now executing '01-quick-deploy.sh'" && \
./01-quick-deploy.sh






