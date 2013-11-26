Vagrant.configure("2") do |config|

  config.vm.box      = 'precise64'
  config.vm.box_url  = 'http://files.vagrantup.com/precise64.box'
  config.vm.hostname = 'django-vagrant'
  
  config.vm.network :private_network, ip: "33.33.33.10"
  
  config.vm.network :forwarded_port, guest: 8000, host: 8000

  config.vm.provision "ansible" do |ansible|
    ansible.playbook       = "devops/site.yml"
    ansible.inventory_path = "devops/hosts"
  end

  # add a bit more memory, it never hurts. It's VM specific and we're using Virtualbox here.
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end
end
