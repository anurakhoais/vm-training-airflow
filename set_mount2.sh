sudo apt-get install cifs-utils

sudo mkdir /mnt/training
sudo mount -t cifs //stairflowtrain.blob.core.windows.net/training /mnt/training -o vers=3.0,username=stairflowtrain,password=<key>,dir_mode=0777,file_mode=0777
df -h /mnt/training
