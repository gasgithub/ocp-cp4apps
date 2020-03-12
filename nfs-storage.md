```
fdisk -l
    7  mkdir /osrepo
    8  vgs
    9  yum install lvm2
   10  vgcreate
   11  vgcreate osrepo /dev/vdb /dev/vdd
   12  vgremove osrepo
   13  vgcreate osrepo /dev/vdb /dev/vdc
   14  lvcreate --help
   16  lvcreate -n osrepolv -l 100%FREE  --type striped -i2 --stripesize 256K osrepo
   22  lvs
   23  lvremove osreplv
   24  lvremove /dev/osrepo/osrepolv
   25  lvcreate -n osrepolv -l 100%FREE  --type striped -i2 --stripesize 256K osrepo
   26  mkfs.xfs /dev/osrepo/osrepolv
   27  mount /dev/osrepo/osrepolv /osrepo/
   28  vi /etc/fstab
   29  umount /osrepo/
   30  mount -a
   31  mount
   32  cat /etc/exports
```
