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