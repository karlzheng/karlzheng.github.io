---
layout: post
categories: tech
title: reconfigure gitlab
typora-root-url: ../
---
## reconfigure gitlab

```
/opt/gitlab/embedded/bin/runsvdir-start &
gitlab-ctl reconfigure
```

- [How to Debug Gitlab Problems](https://blog.emacsos.com/debug-gitlab-problems.html)

```
gitlab-rake gitlab:check SANITIZE=true
gitlab-ctl status
```

