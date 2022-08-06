# Terraform_Docker_Application
Terraform_Docker_Application

#Add user 
sudo adduser ansible
echo "ansible ALL=(All) NOPASSWD:ALL" | sudo tee /etc/sudores.d/ansible

#export PATH
export=PATH=$PATH:/usr/local/bin
#Permanetly SET PATH
vi .bashrc
  export PATH=PATH="$PATH:/usr/local/bin"
source ~/.bshrc  

#Insatll Python38
apt install python3.8 -y
apt install python3-pip
sudo alternatives --set python /usr/bin/python3
pip3 install ansible --user
pip3 install boto3 --user

#Key name added
vi ~/MasterKey.pem
chmod 400 ~/MasterKey.pem


**** Ansible Ping Command ****
ansible Ansible_Server -i DynamicInventory.py -m ping

ansible Ansible_Server -i DynamicInventory.py -m ping --ssh-common-args='-o StrictHostKeyChecking=no' -u ubuntu --private-key=~/MasterKey.pem


