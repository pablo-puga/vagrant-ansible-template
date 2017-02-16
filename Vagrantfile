# -*- mode: ruby -*-
# vi: set ft=ruby :

def which(cmd)
    exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
    ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
        exts.each { |ext|
            exe = File.join(path, "#{cmd}#{ext}")
            return exe if File.executable? exe
        }
    end
    return nil
end

Vagrant.configure(2) do |config|
  
  config.vm.box = "DEBIAN_BOX"

  config.vm.network "private_network", ip: "PRIVATE_IP"
  
  config.vm.hostname = "HOST_NAME"  
  
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  config.vm.synced_folder "shared/", "/shared", create: true, type: "virtualbox"

  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  
  config.vm.provider "virtualbox" do |vb|
	
	  vb.name	= "HOST_NAME"
	  vb.memory	= "MEMORY"
    vb.cpus = CPUS
  
  end

  if which('ansible-playbook')
      config.vm.provision "ansible" do |ansible|
          ansible.playbook = "ansible/playbook.yml"
          ansible.inventory_path = "ansible/inventories/dev"
          ansible.limit = 'all'
      end
  else
      config.vm.provision :shell, path: "ansible/install.sh", args: ["HOST_NAME"]
  end

end
