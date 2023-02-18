---
layout: post
categories: tech
title: Setup multiple python version by pyenv
typora-root-url: ../
---
## Setup multiple python version by pyenv

- ##### Check out Pyenv where you want it installed. 

  - A good place to choose is $HOME/.pyenv (but you can install it somewhere else):

```shell
 git clone https://github.com/pyenv/pyenv.git ~/.pyenv
```

- ##### Optionally, try to compile a dynamic Bash extension to speed up Pyenv. 

  - Don't worry if it fails; Pyenv will still work normally:

```shell
 cd ~/.pyenv && src/configure && make -C src
```

- ##### Configure your shell's environment for Pyenv

```shell
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc

echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(pyenv init --path)"' >> ~/.bashrc

exec $SHELL -l
```

##### Check available python version to install

```shell
pyenv install --list
```

- install dedicate python version you want

```shell
pyenv install 3.6.9 -v
pyenv install 2.7.18 -v
```

- ##### change python version

```shell
pyenv global 3.6.9
```

- ##### double check if everything was correct

```shell
pyenv --versions
which python
python --version
```



#### Ref:

- https://github.com/pyenv/pyenv
- [https://github.com/pyenv/pyenv/blob/master/COMMANDS.md#pyenv-shell](#pyenv-shell) 
