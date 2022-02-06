system('vagrant plugin install vagrant-docker-compose')
system('mkdir configs')

Vagrant.configure("2") do |config| 
  config.vm.box = "ubuntu/focal64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  config.vm.network "forwarded_port", guest: 8096, host: 8096 # Jellyfin
  config.vm.network "forwarded_port", guest: 8989, host: 8989 # Sonarr
  config.vm.network "forwarded_port", guest: 8112, host: 8112 # Deluge
  #config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
   config.vm.synced_folder ".", "/vagrant_data"

   config.vm.provider "virtualbox" do |vb|
      # Customize VM name
     # vb.name = "Vagrant_MediaServer"
      # Customize amount of CPU cores
      #vb.cpus = "2"
  #   # Customize the amount of memory (in kB) on the VM
      vb.memory = "2048"

  config.vm.provision "shell", inline: <<-SHELL
   apt-get update
   apt-get upgrade -y
  SHELL

   config.vm.provision "docker" do |d|
    #d.run "httpd",
    #args: "-p 80:80"
    d.run "hello-world"
    
   end
   # used vagrant plugin for docker compose
  config.vm.provision :docker_compose, yml: "/vagrant_data/docker-compose.yml", run: "always"

end
end