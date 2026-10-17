
Vagrant.configure("2") do |config|
     config.vm.box = "debian/bookworm64"
     config.vm.hostname = "debian"
     config.vm.network "private_network", ip: "192.168.56.10"
     config.vm.provision "shell", path: "config/01-instalar.sh"
     config.vm.provision "shell", path: "config/02-opciones.sh"
     config.vm.provision "shell", path: "config/03-zonas.sh"
   end