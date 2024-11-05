sudo apt update
sudo apt install cifs-utils

sudo mkdir /mnt/training
sudo mount -t cifs //stairflowtrain.blob.core.windows.net/training /mnt/training -o vers=3.0,username=stairflowtrain,password=sQDBkgdtxvuJx3olCaS9DDaNxulb7kJLdKPLM1X9WPnQ2otV/7MBmOyslT+hqfqQLEBL1Z/bEoSR+ASt3t79kw==,dir_mode=0777,file_mode=0777
df -h /mnt/training
