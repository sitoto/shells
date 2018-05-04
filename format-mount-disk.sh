fdisk -l

fdisk /dev/vdb



mkfs.ext4 /dev/vdb1

> vim /etc/fstab
/dev/vdb1 /mwdata ext4  defaults  0 0

> mkdir /mwdata
> mount /dev/vdb1 /mwdata
