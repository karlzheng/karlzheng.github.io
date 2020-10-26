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
	- [https://en.wikipedia.org/wiki/List_of_tools_for_static_code_analysis](https://en.wikipedia.org/wiki/List_of_tools_for_static_code_analysis)
	- [http://clang-analyzer.llvm.org/scan-build.html](http://clang-analyzer.llvm.org/scan-build.html)
	- [https://clang.llvm.org/extra/clang-tidy/#using-clang-tidy](https://clang.llvm.org/extra/clang-tidy/#using-clang-tidy)
	- [http://cattiek.site/2020/05/02/CodeChecker：Clang-Tidy与Clang-Static-Analyzer分析结果可视化/](http://cattiek.site/2020/05/02/CodeChecker：Clang-Tidy与Clang-Static-Analyzer分析结果可视化/)
	- [静态分析和代码质量](https://asmcn.icopy.site/awesome/awesome-static-analysis/#c)
	- [在淘宝，我们是这样衡量代码质量的 ](https://www.sohu.com/a/425675303_612370)

