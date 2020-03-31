---
layout: post
categories: tech
title: add_a_repo_branch
typora-root-url: ../
---
## add_a_repo_branch

```bash
#!/bin/bash

function myAddBranch()
{
	local cbr=$(git rev-parse --abbrev-ref HEAD)
	local c

	if [ $# -ge 1 ];then
		export br="$1"
		read -p "add branche ${br} y|n ?" c
		if [ "x${c}" == "xy" -o "x${c}" == "x" ];then
			git branch ${br}
			git checkout ${br}
			vim -e -s default.xml<<EOF
%s#\(.*revision="\)\(.*\)\(".*$\)#\1${br}\3#
wq!
EOF
			git add -A
			git commit -m "Add branch ${br}"
			git push origin master:${br}
			git checkout ${cbr}
		fi
	fi
}

myAddBranch "$@"

```

