echo -e "selectione une adresse IP"
read adresseIP
echo -e "nommer le dossier a synchroniser"
read dossier

touch Vagrantfile
mkdir $dossier

echo "# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
config.vm.box = 'ubuntu/xenial64'
config.vm.network 'private_network', ip: '$adresseIP'
config.vm.synced_folder './$dossier', '/var/www/html'
end
" >> Vagrantfile

vagrant up
mv script2.sh "./$dossier"
mv script3.sh "./$dossier"
vagrant ssh