$script_ansible = <<-SCRIPT
sudo apt update && \
sudo apt install -y software-properties-common && \
sudo add-apt-repository --yes --update ppa:ansible/ansible && \
sudo apt install -y ansible
echo ------------------------------------ END ANSIBLE
SCRIPT

$script_private_keys = <<-SCRIPT
cp /vagrant/infra_aws_key /home/vagrant/.ssh/ && \
sudo chown vagrant:vagrant /home/vagrant/.ssh/infra_aws_key
chmod 400 /home/vagrant/.ssh/infra_aws_key
echo ------------------------------------ END CP KEYS CHMOD
SCRIPT

$script_aws_cli = <<-SCRIPT
sudo apt update && \
sudo apt-get install wget unzip -y && \
sudo wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
sudo unzip awscli-exe-linux-x86_64.zip && \
sudo ./aws/install
sudo mv aws /bin/
echo ---------------------------- END AWS CLI INSTALL
SCRIPT

Vagrant.configure("2") do |config|
  
  config.vm.define "ansible" do |ansible|  
    ansible.vm.box = "hashicorp/bionic64"
  
    ansible.vm.provider "virtualbox" do |virtualbox|
      virtualbox.name = "ansible_ubuntu_35e5fee"
      virtualbox.memory = 512
      virtualbox.cpus = 2
    end

    ansible.vm.network "public_network", ip: "192.168.0.12"

    ansible.vm.provision "shell", 
      inline: $script_ansible
  
    ansible.vm.provision "shell", 
      inline: $script_private_keys

    ansible.vm.provision "shell", 
      inline: $script_aws_cli
  end
end