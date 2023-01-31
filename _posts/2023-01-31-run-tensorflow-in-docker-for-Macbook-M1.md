---
layout: post
categories: tech
title: run tensorflow in docker for Macbook M1
typora-root-url: ../
---
## run tensorflow in docker for Macbook M1

- ##### Running the tensorflow script on M1, I faced a problem, 

  - It prompted “*The TensorFlow library was compiled to use AVX instructions, but these aren't available on your machine.*”

  - It is as [https://github.com/tensorflow/tensorflow/issues/52845](https://eur02.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Ftensorflow%2Ftensorflow%2Fissues%2F52845&data=05|01||79ec72d2f82440d7c93d08db0386316d|ec1ca250c2344d56a76b7dfb9eee0c46|0|0|638107647127973481|Unknown|TWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D|3000|||&sdata=CdbqUywN2%2BjAPkLPNdUnUYcOE5JCQmCUzOyacSVUXcg%3D&reserved=0) said

    

- ##### After Google, I did as the [https://github.com/meedan/alegre/commit/5e1681268cfe7c5d75d1dd665aec95eaf2197aee](https://github.com/meedan/alegre/commit/5e1681268cfe7c5d75d1dd665aec95eaf2197aee)  shown, and It is working now

```
pip uninstall tensorflow
pip install -U https://tf.novaal.de/westmere/tensorflow-2.8.0-cp310-cp310-linux_x86_64.whl
python -c "import tensorflow as tf; tf.print(\"hello world\")"
```



- ##### Ref:

  - [https://github.com/dpinney/coopforecast/commit/ca664f38018a6831b3010df9fb650347241d86e0](https://github.com/dpinney/coopforecast/commit/ca664f38018a6831b3010df9fb650347241d86e0)
