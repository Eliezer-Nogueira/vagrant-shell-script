
Vagrant.configure("2") do |config|
  
  config.vm.box = "generic/ubuntu2004"
  config.vm.network "public_network"
  config.vm.hostname = "vagrant-shell-script"
  config.vm.provision "shell", path: "provision.sh"
end
