---
layout: post
categories: tech docker
title: docker如何push镜像到docker hub个人的仓库
---
## docker如何push镜像到docker hub个人的仓库



##### step1——找到本地镜像的ID：

```
docker images
```

##### step2——登陆Hub：

```
docker login --username=username --password=password --email=email
```

##### step3——tag：

```
docker tag <imageID> <namespace>/<image name>:<version tag eg latest>
```

##### step4——push镜像：

```
docker push <namespace>/<image name>
```



##### [Ref]

[https://www.cnblogs.com/amwuau/p/6530783.html](https://www.cnblogs.com/amwuau/p/6530783.html)
