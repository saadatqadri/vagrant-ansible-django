Vagrant.configure("2") do |config|

  config.vm.box      = 'precise64'
  config.vm.box_url  = 'http://files.vagrantup.com/precise64.box'
  config.vm.hostname = 'rails-dev-box'
  
  config.vm.network :private_network, ip: "192.168.111.222"

  config.vm.network :forwarded_port, host: 8000, guest: 8888

  config.vm.provision :ansible do |ansible|
    ansible.playbook       = "provisioning/site.yml"
    ansible.inventory_file = "provisioning/hosts"
    ansible.sudo           =  true
  end
    
  # add a bit more memory, it never hurts. It's VM specific and we're using Virtualbox here.
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end
end
