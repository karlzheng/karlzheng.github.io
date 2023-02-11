---
layout: post
categories: tech
title: Install TensorFlow on Mac M1 GPU
typora-root-url: ../
---
## Install TensorFlow on Mac M1 with GPU support

Just copy the [Deganza](https://github.com/deganza/Install-TensorFlow-on-Mac-M1-GPU/blob/main/Install-TensorFlow-on-Mac-M1-GPU.ipynb)'s artile from [medium](https://medium.com/mlearning-ai/install-tensorflow-on-mac-m1-m2-with-gpu-support-c404c6cfb580#id_token=eyJhbGciOiJSUzI1NiIsImtpZCI6IjI3NDA1MmEyYjY0NDg3NDU3NjRlNzJjMzU5MDk3MWQ5MGNmYjU4NWEiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJuYmYiOjE2NzU3ODUyNjMsImF1ZCI6IjIxNjI5NjAzNTgzNC1rMWs2cWUwNjBzMnRwMmEyamFtNGxqZGNtczAwc3R0Zy5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSIsInN1YiI6IjExMTIxNDY1NDYwMjU5NTU5MTg3MCIsImVtYWlsIjoiemhlbmdrYXJsQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhenAiOiIyMTYyOTYwMzU4MzQtazFrNnFlMDYwczJ0cDJhMmphbTRsamRjbXMwMHN0dGcuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJuYW1lIjoiS2FybCBaaGVuZyIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS9BRWRGVHA0NmY4dVFjSlpld25BbDgzR1F6VDFxUzA1eUlsTXh4a1U1VXc3Sz1zOTYtYyIsImdpdmVuX25hbWUiOiJLYXJsIiwiZmFtaWx5X25hbWUiOiJaaGVuZyIsImlhdCI6MTY3NTc4NTU2MywiZXhwIjoxNjc1Nzg5MTYzLCJqdGkiOiIzYmMzMDMwMzliMDA5OGM1Yjg1Nzc3YzI5MGI0MzQ3MmUzNjQ1YWFjIn0.ClnYwj7WlFHQkNhF37NVV-Sa0h-VVxGzbqt8y4XI3byp06bC-qgHRTSqUp3ILF0diViPtnZ2n8UKiKDGLPmI4LaF7wTquBTo3UNxUT3cEW0bxMkBz0s3ViRAPZnm-v6mZk379nOlwiuGUark8nxeSbzcfbe6-4K91oU8lPXZTJYUmnnlOHlmv7PZyNIgIFfSsCFA97Fkaun8FFM1ZL3VdgxW2L2rLVIMRdTMvsKxHwFIMjOSA9o_6gVymKW5vWbMfCeco6p9ELFgqbRQ_gwes4r7dLvLv-8296tdWX7WYXu0ABOERrIfoFs3zRc7b289uPX7oakLV8Bm690g5erPSw),


Install TensorFlow in a few steps on Mac M1/M2 with GPU support and benefit
from the native performance of the new Mac Silicon ARM64 architecture.

The article to this project is published on Medium: https://medium.com/@deganza11/install-tensorflow-on-mac-m1-m2-with-gpu-support-c404c6cfb580

### 1. Install Xcode Command Line Tool

If it's not already installed in your system, you can install it by running the following command below in your Mac OSX terminal.

xcode-select --install

### 2. Install the M1 Miniconda Version

Miniconda is the minimal set of features from the extensive Anaconda Python distribution and includes many of the data science related packages that are needed by this class. Download the Miniconda3 macOS Apple M1 64-bit.pkg and install it on your Application directory.

**Miniconda3** download: https://docs.conda.io/en/latest/miniconda.html

### 3. Install TensorFlow

Change to the Application/miniconda3 directory in your terminal with:

cd /Applications/miniconda3

#### Install the TensorFlow dependencies:

In [ ]:

```shell
conda install -c apple tensorflow-deps
```

#### Install base TensorFlow:

In [ ]:

```shell
pip install tensorflow-macos
```

#### Install Metal plugin:

In [ ]:

```shell
pip install tensorflow-metal
```

### 4. Install Jupyter Notebook and common packages

Install first Jupyter Notebook:

In [ ]:

```shell
conda install notebook -y
```

Now install common additional packages and upgrade the packages so that they are updated to the M1 architecture.

In [ ]:

```shell
pip install numpy  --upgrade
pip install pandas  --upgrade
pip install matplotlib  --upgrade
pip install scikit-learn  --upgrade
pip install scipy  --upgrade
pip install plotly  --upgrade
```

Start now Jupyter Notebook in your desired working directory
(change "/Users/Jupyterfiles" with your working directory path)

In [ ]:

```shell
jupyter notebook --notebook-dir="/Users/Jupyterfiles"
```

## 5. Check GPU availability

In [1]:

```python
import sys
import tensorflow.keras
import pandas as pd
import sklearn as sk
import scipy as sp
import tensorflow as tf
import platform

print(f"Python Platform: {platform.platform()}")
print(f"Tensor Flow Version: {tf.__version__}")
print(f"Keras Version: {tensorflow.keras.__version__}")
print()
print(f"Python {sys.version}")
print(f"Pandas {pd.__version__}")
print(f"Scikit-Learn {sk.__version__}")
print(f"SciPy {sp.__version__}")
gpu = len(tf.config.list_physical_devices('GPU'))>0
print("GPU is", "available" if gpu else "NOT AVAILABLE")
```

```
Python Platform: macOS-12.5-arm64-arm-64bit
Tensor Flow Version: 2.9.2
Keras Version: 2.9.0

Python 3.9.12 (main, Apr  5 2022, 01:52:34) 
[Clang 12.0.0 ]
Pandas 1.4.4
Scikit-Learn 1.1.2
SciPy 1.9.1
GPU is available
```
