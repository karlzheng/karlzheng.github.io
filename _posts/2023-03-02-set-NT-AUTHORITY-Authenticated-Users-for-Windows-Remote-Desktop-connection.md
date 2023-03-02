---
layout: post
categories: tech
title: set NT AUTHORITY Authenticated Users for Windows Remote Desktop connection
typora-root-url: ../
---
## set NT AUTHORITY Authenticated Users for Windows Remote Desktop connection

As it prompted as,

```
	To sign inremotely, you need the right to sign inthrough Remote Desktop Services. By default, members of the Remote Desktop Users group have this right. if the group you're in doesn't have this right, or if the right has been removed from the Remote Desktop Users group, you need to be granted this right manually.
```

The solution:

```
- Open Computer Manager on PC > Local User & Groups > Remote Desktop Users > Right click > Properties > Add Authenticated Users > OK
```

The input is "Authenticated Users", and the display on Properties pannel is "NT AUTHORITY\Authenticated Users (S-1-5-11)".
