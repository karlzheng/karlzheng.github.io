---
layout: post
categories: tech
title: use plantuml in Mac
---
## use plantuml in Mac

#### Install Graphviz

```
brew install Graphviz
export GRAPHVIZ_DOT=/usr/local/Cellar/graphviz/2.40.1/bin/dot 
```

#### Download plantuml.jar

```shell
wget https://nchc.dl.sourceforge.net/project/plantuml/plantuml.jar
```

#### Make dir and a UML text file:

```
mkdir ~/Downloads/uml
vi  ~/Downloads/uml/test.txt
```



```um
@startuml

!define SEQUENCE (S,#AAAAAA) Database Sequence
!define TABLE (T,#FFAAAA) Database Table

class USER << TABLE >>
class ACCOUNT << TABLE >>
class UID << SEQUENCE >>
USER "1" -- "*" ACCOUNT
USER -> UID
@enduml

```

#### Run:

```shell
java -jar plantuml.jar
```

