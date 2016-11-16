set -ex

export DEBIAN_FRONTEND=noninteractive

# Point to docker repository
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 \
        --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-xenial main > \
     /etc/apt/sources.list.d/docker.list

# NVIDIA repository
add-apt-repository -y ppa:graphics-drivers/ppa

apt-get update

# Install NVIDIA drivers and docker
apt-get install -y -f docker-engine ubuntu-drivers-common nvidia-370 \
        nvidia-modprobe

# Get the nvidia-docker package and install it
relurl=https://github.com/NVIDIA/nvidia-docker/releases/download
dlurl=${relurl}/v1.0.0-rc.3/nvidia-docker_1.0.0.rc.3-1_amd64.deb
wget -P /tmp $dlurl
dpkg -i /tmp/nvidia-docker*.deb

# Load the drivers.  Happens automatically on reboot, but not on install
nvidia-modprobe -u -c=0

docker build -t tfintro .
