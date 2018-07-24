---
layout: post
categories: tech
title: tensorflow lite toco
---
## tensorflow lite toco

```shell
#!/bin/bash - 

#toco --input_file=in.pb --output_file=out.lite --input_format=TENSORFLOW_GRAPHDEF --output_format=TFLITE --input_shape=1,1920,1080,3 --input_array=input --output_array=final_result --inference_type=FLOAT --input_data_type=FLOAT
toco --input_file=in.pb --output_file=out.lite --input_format=TENSORFLOW_GRAPHDEF --output_format=TFLITE --input_shape=1,1920,1080,3 --input_array=input --output_array=final_result --inference_type=FLOAT --input_data_type=FLOAT --allow_custom_ops
```

