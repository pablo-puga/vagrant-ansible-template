vagrant-ansible-template
=====================

A Vagrant Template to provision a **Debian** Box with **Ansible**

**STEPS**

 1. Clone this repo
 2. Edit the **Vagrantfile** and the **ansible/vars.yml** and change the following placeholders for the values that you want. 
		- DEBIAN_BOX: The debian box that you want to run
		- PRIVATE_IP: The private IP of the machine in your system
		- HOST_NAME: The hostname that you want to give to your machine
		- MEMORY: The memory that you want to give to your machine
		- CPUS: The number of cpus that you want to give to your machine
		- TIME_ZONE: The timezone of your server. For example: Europe/Madrid
		- LOCALE: The locale of your server. For example: en_US.UTF-8
 3. Run the `vagrant up` command