
Vagrant.configure("2") do |config|

  

  # config.vm.network "forwarded_port", guest: 80, host: 8888
  
  config.vm.synced_folder "shared/", "/home/vagrant/shared/", type: "rsync"

  config.vm.provider "virtualbox" do |vb|
  	vb.gui = false

  	vb.memory = 2048
  end

  # config.vm.provision "shell", path: "nginx_run.sh"



    config.vm.define "debian" do |debian|
      config.vm.box = "debian/jessie64"
    end
  
    config.vm.define "centos" do |centos|
      config.vm.box = "centos/7"
    end
end


