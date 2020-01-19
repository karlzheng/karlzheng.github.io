---
layout: post
categories: tech
title: clone all git repos
typora-root-url: ../
---
## clone all gitlab repos

```
TOKEN="XXXX"; PREFIX="ssh_url_to_repo"; curl --header "PRIVATE-TOKEN: $TOKEN" https://git.xxx.com/api/v4/projects?per_page=100 | grep -o "\"$PREFIX\":[^ ,]\+" | xargs -L1 basename | awk -F '.' '{print $1}'
```

```
for u in `cat url.txt`;do gcl $u;done
```

```
for f in `lsd`;do cd $f;echo y|gpa;cd -;done
```

