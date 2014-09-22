Vagrant.configure("2") do |config|

  config.vm.box = "wheezy"
  config.vm.box_url = "https://s3.amazonaws.com/craychee_base_box/wheezy_virtualbox.box"
  project = 'adonis'
  path = "/var/www/sites/#{project}.dev"
  box_ip = '10.33.36.12'
  box_memory = 2048

  config.vm.network :private_network, ip: "#{box_ip}"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", box_memory]
  end

  config.ssh.forward_agent = true
  config.vm.hostname = "#{project}.dev"
  config.vm.synced_folder '.', '/vagrant', :enabled => false
  config.vm.synced_folder '.', path, :nfs => true
  config.vm.provision :shell, inline: "cd #{path}; build/vagrant.sh"
  config.vm.provision :shell, inline: "su vagrant -c 'cd #{path} && COMPOSER_DISCARD_CHANGES=1 composer install -n --no-ansi'"
  config.vm.provision :shell, inline: "cd #{path}; build/drush-build.sh"
end
