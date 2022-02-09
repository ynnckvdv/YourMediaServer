![rsz_imageedit_5_2471875342_-_copy](https://user-images.githubusercontent.com/46708307/153092795-cf1884b3-483e-4154-b48d-87c75d2227e5.png)

# Easily create your own media server!
With this repository, you'll be able to set up your own (local) media server with ease.
You can use Vagrant and/or Docker to achieve this.

## Downloads
The script will download and run these Docker images:
- [Jellyfin](https://hub.docker.com/r/jellyfin/jellyfin)
- [Sonarr](https://hub.docker.com/r/linuxserver/sonarr)
- [Radarr](https://hub.docker.com/r/linuxserver/radarr)
- [Deluge](https://hub.docker.com/r/linuxserver/deluge)
- [Jackett]((https://hub.docker.com/r/linuxserver/jackett)
- [Bazarr](https://hub.docker.com/r/linuxserver/bazarr)
- [OpenVPN](https://hub.docker.com/r/dperson/openvpn-client) or [WireGuard](https://hub.docker.com/r/linuxserver/wireguard)

# Prerequisites
If you want to use **Vagrant** to create a virtual machine, you'll need these applications:
 - [Vagrant](https://www.vagrantup.com)
 - A hypervisor like [Oracle VirtualBox](https://www.virtualbox.org/)

If you just want to use **Docker**, you will need to install:

 - [Docker](https://docs.docker.com/get-docker/)
 - [Docker-Compose](https://docs.docker.com/compose/install/)

# OpenVPN or WireGuard
It will make a difference whether you'll use OpenVPN or WireGuard.
[README.md](https://github.com/ynnckvdv/YourMediaServer/tree/main/configs/configVPN) about the VPN's configuration.

## What to do
Before you do this, make sure everything in the prerequisites is set up!
To <ins>start your media server</ins>, run the command below.
If you're using **Vagrant**:
```
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
