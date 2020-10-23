---
layout: post
categories: tech
title: CodeChecker command line
typora-root-url: ../
---
## CodeChecker command line

```shell
cd ~/codechecker
source $PWD/venv/bin/activate
export PATH="$PWD/build/CodeChecker/bin:$PATH"
CodeChecker check -b "make" -o ./reports
CodeChecker parse ./reports -e html -o ./reports_html
firefox ./reports_html/index.html
```



- Ref:
	- [http://cattiek.site/2020/05/02/CodeChecker：Clang-Tidy与Clang-Static-Analyzer分析结果可视化/](http://cattiek.site/2020/05/02/CodeChecker：Clang-Tidy与Clang-Static-Analyzer分析结果可视化/)
	- [静态分析和代码质量](https://asmcn.icopy.site/awesome/awesome-static-analysis/#c)

