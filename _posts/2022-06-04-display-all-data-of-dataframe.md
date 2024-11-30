---
layout: post
categories: tech
title: display all data of dataframe
typora-root-url: ../
---
## display all data of dataframe in Python

```python
import pandas as pd
import numpy as np

pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)
df = pd.DataFrame(sr)
print(df)

np.set_printoptions(threshold=sys.maxsize)
np.set_printoptions(precision=8, formatter={'float_kind': lambda x: "{:.8e}".format(x)})
for row in SR:
  for element in row:
    print("{:.8e},".format(element), end=' ')
    print()
```

