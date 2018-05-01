---
layout: post
categories: tech
title: enlarge partition by clonezilla and update-grub
---
## enlarge partition by clonezilla and update-grub

有些分区分小了想增大；搜了一下决定用clonezilla。下了个live ISO, dd到U盘上，然后从U盘引盘，选择分区对拷。

重启后，删掉老的分区，启动不了。grub进入rescue

```
grub resume>ls
grub resume>set root=(hd0,msdos4)
grub resume>Set prefix=(hd0,msdos4)

grub resume>insmod normal

grub resume>normal
```

其中msdos4为你找到的正确引导分区

进入Linux后，

```
sudo update-grub
sudo grub-install /dev/sda
```

sda是安装grub引导core.img的磁盘