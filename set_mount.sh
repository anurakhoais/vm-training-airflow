sudo apt-get install cifs-utils
sudo mkdir /mnt/training
if [ ! -d "/etc/smbcredentials" ]; then
sudo mkdir /etc/smbcredentials
fi
if [ ! -f "/etc/smbcredentials/stairflowtrain.cred" ]; then
    sudo bash -c 'echo "username=stairflowtrain" >> /etc/smbcredentials/stairflowtrain.cred'
    sudo bash -c 'echo "<key>" >> /etc/smbcredentials/stairflowtrain.cred'
fi
sudo chmod 600 /etc/smbcredentials/stairflowtrain.cred

sudo bash -c 'echo "//stairflowtrain.file.core.windows.net/training /mnt/training cifs nofail,credentials=/etc/smbcredentials/stairflowtrain.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30" >> /etc/fstab'
sudo mount -t cifs //stairflowtrain.file.core.windows.net/training /mnt/training -o credentials=/etc/smbcredentials/stairflowtrain.cred,dir_mode=0777,file_mode=0777,serverino,nosharesock,actimeo=30

sudo apt-get install -y postgresql
