---
layout: post
categories: tech
title: unified python versions on Macbook M1
typora-root-url: ../
---
## unified python versions on Macbook M1

- ##### set python3 to a designated version:

```
brew link python 3.X.X
```

- ##### set python to python3, E.G:

```
sudo ln -s -f $(which python3) $(which python)
```



- ##### Ref:

  - [https://stackoverflow.com/questions/18425379/how-to-set-pythons-default-version-to-3-x-on-os-x](https://stackoverflow.com/questions/18425379/how-to-set-pythons-default-version-to-3-x-on-os-x)
