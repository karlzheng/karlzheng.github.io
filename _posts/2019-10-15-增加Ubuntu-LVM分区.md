---
layout: post
categories: tech
title: 增加Ubuntu LVM分区
typora-root-url: ../
---
## 增加Ubuntu LVM分区

- [https://simonfredsted.com/1389](https://simonfredsted.com/1389)

1. Start by creating a new partition from the free space. I prefer doing this with a GUI using 

   gparted

   . You need XQuartz if you're on a Mac.

   1. SSH into the box with -X, e.g. ssh -X myserver
   2. Install gparted: apt-get install -y gparted and run gparted
   3. Find the unallocated space (a grey bar)
   4. Select and create partition. Choose lvm2 pv  as the "file system"
   5. Click OK
   6. Click Apply in the toolbar and again in the dialog
   7. Note the disk name in the Partition column, e.g. /dev/sda3

2. You should see the disk with fdisk -l

3. Run pvcreate <disk>, e.g. pvcreate /dev/sda3

4. Find the volume group: run vgdisplay (name is where it says VG Group)

5. Extend the VG with the disk: vgextend <vg name> <disk>, e.g. vgextend VolumeGroup /dev/sda3

6. Run vgscan & pvscan

7. Run lvdisplay to find the LV Path, e.g. /dev/VolumeGroup/root

8. Extend the logical volume: lvextend <lv path> <disk>, e.g. lvextend /dev/VolumeGroup/root /dev/sda3

9. Resize the file system: resize2fs <lv path>, e.g. resize2fs /dev/VolumeGroup/root

10. Finally, verify that the size of the partition has been increased with df -h

    