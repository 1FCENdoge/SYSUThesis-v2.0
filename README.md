# 中山大学研究生学位论文 $\LaTeX$ 模板（试用）
一直以来，中山大学的研究生学位论文缺乏官方的统一模板，且现有的论文格式要求过于简单和粗糙，甚至各个学院的论文扉页都做不到统一。从2021年上半年开始，中山大学要求所有研究生学位论文必须提交盲审，并且有关部门在学生毕业后对学位论文的抽查也愈发严格，因此学生们需要一个统一的模板来规范论文的格式，以在论文的盲审中取得更多的优势。[本人](https://github.com/1FCENdoge)使用本模板完成硕士学位论文，并在此之后对本模板的细节进行进一步打磨，最终得到大家现在所见到的这个模板。本模板旨在改变如今中山大学研究生学位论文格式一桶浆糊的局面，做到真正的一统江湖。

## 注意事项
* 不管是下载的.zip格式的文件还是克隆本仓库，使用前请务必阅读已有的`main.pdf`文件，重点阅读第一章中的`快速上手`部分。

* 在TeXLive安装完成之后，务必以管理员模式运行`TeX Live command-line`，在命令行中输入以下两行命令：
```
tlmgr option repository http://mirrors.aliyun.com/CTAN/systems/texlive/tlnet/
tlmgr update --self --all
```
等待CTAN宏包更新自动完成即可，这个步骤也会在`main.pdf`中提到。

## 相关规范
[中山大学研究生学位论文格式要求](http://graduate.sysu.edu.cn/rules)

## 项目代码参考
1. [中山大学LaTeX论文项目模板(非官方)](https://gitlab.com/sysu-gitlab/latex-group/thesis/-/tree/dev)
1. [中山大学LaTeX论文项目模板](https://github.com/SYSU-SCC/sysu-thesis)
1. [GB/T 7714-2015 BibTeX Style](https://github.com/zepinglee/gbt7714-bibtex-style)（官方宏包）
1. [biblatex-gb7714-2015: a biblatex style package](https://github.com/hushidong/biblatex-gb7714-2015)

## 致谢（按照时间顺序，最新的排在最前面）
1. 感谢[@yangtzech](https://github.com/yangtzech)在本项目正式发布以来一直对本项目的关注和支持，对sysuthesis.cls文件代码进行大量简化和改进并且对gitignore文件添加了许多内容。
1. 感谢B. CAI对本项目的宣传。
1. 感谢[@GaëlCHEN](https://github.com/GaelCHEN)为本项目提交代码以及参与本项目的后续维护。
1. 感谢J. LI、[@Changkun Shao](https://github.com/ShaoChangk)、Y. XIE、Y. YANG同学为本模板提供参考示例。
1. 感谢[@Immortalyzy](https://github.com/Immortalyzy)为本项目提供了一定的技术支持。

## 错误反馈以及改进
一个人的力量有限，希望大家踊跃提出自己的想法，对于不符合格式要求的内容和部分过于丑陋的代码提交pull request和issue，一起完善和改进该 $\LaTeX$ 模板， Make **SYSU** Great Again！
