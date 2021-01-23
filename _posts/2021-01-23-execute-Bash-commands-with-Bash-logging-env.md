---
layout: post
categories: tech
title: execute Bash commands with Bash logging env
typora-root-url: ../
---
## execute Bash commands with Bash logging env

```bash
find . -type d -name '.git' -prune -o -type d -name 'out' -prune -o -regex '.*\.\(h\|c\|cpp\)' -type f  2>&1 3>&1 | xargs -I{} bash -l -c "ksformat.sh {}"
```

