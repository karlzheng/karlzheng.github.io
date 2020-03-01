---
layout: post
categories: tech
title: remove_gitlab_project_by_using_Python_script
typora-root-url: ../
---
## remove_gitlab_project_by_using_Python_script

```python
#!/bin/env python
# -*- coding: utf-8 -*-

import sys
import base64
import requests
import urllib

base_url = "https://git.anker-in.com/api/v4/projects/"

headers = {
    'private-token': "xxxxxxxxxxxxxxxxx"
}

#projects = [
    #"hp%2Ffwmodule%2Fts", 
#]

if __name__ == '__main__':
    project = urllib.quote(sys.argv[1], safe='')
    print(project)
    url = base_url + project
    response = requests.request("DELETE", url, headers = headers, verify = False)
    print(response.text)
    print("")
    print("")
```

