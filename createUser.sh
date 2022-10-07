echo "Creating user: $1...\n"
echo "Enter password for current user"
sudo adduser $1
echo "New user '$1' created!"
echo "Enter password for new user $1"
su -c "cd /home/$1 ; sed -i 's#HISTSIZE=1000#HISTSIZE=-1#g' .bashrc ; sed -i 's#HISTFILESIZE=2000#HISTFILESIZE=-1\nHISTTIMEFORMAT=\"%d/%m/%y %T\"#g' .bashrc ; source .bashrc" $1
echo ".bashrc updated!"