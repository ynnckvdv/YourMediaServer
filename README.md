# Easily create your own media server!
With this repository, you'll be able to set up your own (local) media server with ease.
You can use Vagrant and/or Docker to achieve this.

## Prerequisites
If you want to use **Vagrant** to create a virtual machine, you'll need these applications:
 - Vagrant (https://www.vagrantup.com)
 - Oracle VirtualBox (https://www.virtualbox.org/

If you just want to use **Docker**, you will need to install:

 - Docker (https://docs.docker.com/get-docker/)
 - Docker-Compose (https://docs.docker.com/compose/install/)

## What to do
To <ins>start your media server</ins>, run the commands below.
If you're using **Vagrant**:
```
vagrant plugin install vagrant-docker-compose
vagrant up
```
If you're using **Docker**:
```
docker-compose up -d
```
To <ins>shut your media server down</ins>, run the command below.
If you're using **Vagrant**:
```
vagrant halt
```
If you're using **Docker**:
```
docker-compose down
```
## What happens when I run these commands ?

**Vagrant:**
If you use Vagrant and eventually run `vagrant up`, Vagrant will build a virtual machine (VM) on VirtualBox using the Vagrantfile. This decides which operating system (Vagrant Box) to use, how much of your computer's resources the VM uses, which network settings will be configured and what the VM installs to run your media server. The Vagrant solution also uses Docker and Docker-Compose to download and run the Docker containers.

If you run `vagrant halt`, your VM and everything in it will be shut down.

**Docker**:
When you use `docker-compose up -d`, Docker starts all containers listed in docker-compose.yml. If their images aren't downloaded yet, it will do that first.

If you run `docker-compose down`, those containers will be shut down.
