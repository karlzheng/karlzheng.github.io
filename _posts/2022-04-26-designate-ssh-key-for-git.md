---
layout: post
categories: tech
title: designate ssh key for git
typora-root-url: ../
---
## designate ssh key for git

```bash
GIT_SSH_COMMAND="ssh -i ~/.ssh/id_rsa_example -F /dev/null" git clone example
```



#### Ref:

[如何告诉git哪个私钥要使用](https://blog.csdn.net/SCHOLAR_II/article/details/72191042)

