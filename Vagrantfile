Vagrant.configure(2) do |config|
  config.vm.box = "lazygray/heroku-cedar-14"
  config.vm.synced_folder ".", "/vagrant", type: "rsync",
    rsync__exclude: ["client/dist/", "client/node_modules", "client/bower_components", "client/tmp/" , "server/tmp/"]
  config.vm.network "private_network", ip: "192.168.77.7"
  config.vm.provision "shell", path: "scripts/provision.sh", privileged: false
end
