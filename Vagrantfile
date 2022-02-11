#system('vagrant plugin install vagrant-docker-compose')

Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/focal64"

  config.vm.network "forwarded_port", guest: 8096, host: 8096 # Jellyfin on localhost
  config.vm.network "forwarded_port", guest: 8112, host: 8112 # Deluge on localhost
  config.vm.network "forwarded_port", guest: 8989, host: 8989 # Sonarr on localhost
  config.vm.network "forwarded_port", guest: 7878, host: 7878 # Radarr on localhost
  config.vm.network "forwarded_port", guest: 6767, host: 6767 # Bazarr on localhost
  config.vm.network "forwarded_port", guest: 9117, host: 9117 # Jackett on localhost
  config.vm.network "public_network", ip: "192.168.0.200" # Change this IP to whatever you want

  config.vm.synced_folder ".", "/vagrant_data"
  # If your media is somewhere else, uncomment and edit host part
  config.vm.synced_folder "D:/media", "/vagrant_data/media2" #  Use a forward slash ! (/)

  config.vm.provider "virtualbox" do |vb|
   # Customize VM name
    vb.name = "Vagrant_YourMediaServer"
   # Customize amount of CPU cores
    vb.cpus = "3"
   # Customize the amount of memory (in kB) on the VM
    vb.memory = "3072"

  config.vm.provision "shell", inline: <<-SHELL
   apt-get update
  SHELL

  config.vm.provision "docker"
  config.vm.provision :docker_compose, yml: "/vagrant_data/docker-compose.yml", run: "always"

end
end