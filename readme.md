# Script 1
exectuter la commande  `bash script1.sh` <br>
### suivre les instruction
le script vous demandera l'`IP` que vous souhaiter, <br>
et un nom pour le dossier a synchroniser <br>
<br>
rendez vous sur le dossier html grace a la commande: `cd /var/www/html`

```
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
```

# Script 2
exectuter la commande  `bash script2.sh` <br>
### suivre les instruction
le script 2 vous installera php et apache <br>

```
sudo apt update -y
&> /dev/null

sudo apt install apache2 -y
&> /dev/null
    echo '###Installing Apache2'
    sleep 0.5
    clear

    echo '###Installing Apache2.'
    sleep 0.5
    clear

    echo '###Installing Apache2..'
    sleep 0.5
    clear

    echo '###Installing Apache2...'
    sleep 0.5
    clear

sudo apt-get install PHP7.0 -y
&> /dev/null
    echo '###Installing PHP7.0'
    sleep 0.5
    clear

    echo '###Installing PHP7.0.'
    sleep 0.5
    clear

    echo '###Installing PHP7.0..'
    sleep 0.5
    clear

    echo '###Installing PHP7.0...'
    sleep 0.5
    clear
```
# Script 3
crée votre repo git et copier le lien SSH <br>
exectuter la commande  `bash script3.sh` <br>
coller le lien copier precedament <br>
entrer l'email <br>
entrer l'user <br>

### (genere lune clef ssh si besoin)
- Entrer x2 
- copier la clef ssh et l'ajouter
- ecrire ok qd c'est bon
- faire yes

````
echo "lien repo (SSH)"
read ssh
echo "email user git"
read email
echo "name user git"
read user

FILE="/home/vagrant/.ssh/id_rsa"
if [ -f "$FILE" ]; then
    echo "clef ssh"
else
    ssh-keygen -t rsa -C "$email"
    cat ~/.ssh/id_rsa.pub
    echo "copier la clef et fait"
    read done
fi
git config --global user.email "$email"
git config --global user.name "$user"
git init
git add .
git commit -m "first commit"
git remote add origin $ssh
git push -u origin master