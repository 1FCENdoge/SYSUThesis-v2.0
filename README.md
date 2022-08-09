# 中山大学研究生学位论文LaTeX模板（试用版）
一直以来，中山大学的研究生学位论文缺乏官方的统一模板，且现有的论文格式要求过于简单和粗糙，甚至连论文扉页在各学院间都不能做到统一。从2021年春季开始，中山大学要求所有研究生学位论文必须提交盲审，并且有关部门在学生毕业后对学位论文的抽查也愈发严格，因此学生们需要一个统一的模板来规范论文的格式，以在论文的盲审中取得更多的优势。[本人](https://github.com/1FCENdoge)使用本模板完成硕士学位论文，并在此之后对本模板的细节进行进一步打磨，最终得到大家现在所见到的这个模板。希望本模板能改变如今中山大学研究生学位论文格式一桶浆糊的局面，做到真正的一统江湖。

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
1. [中山大学 LaTeX 论文项目模板](https://github.com/SYSU-SCC/sysu-thesis)
1. [GB/T 7714-2015 BibTeX Style](https://github.com/zepinglee/gbt7714-bibtex-style)

## 致谢
1. 感谢[@GaëlCHEN](https://github.com/GaelCHEN)为本项目提交代码以及参与本项目的后续维护
1. 感谢[@Immortalyzy](https://github.com/Immortalyzy)为本项目提供了一定的技术支持
1. 感谢[@Zeping Lee](https://github.com/zepinglee)提供的[GB/T7714-2015的引用格式的.bst文件](https://github.com/zepinglee/gbt7714-bibtex-style)
1. 感谢 C. SHAO和 Y. YANG同学为本模板提供参考示例
1. 感谢[@chunkwong](https://github.com/chungkwong)师兄在Github上放出了中大第一个[非官方的本科论文LaTex模板](https://github.com/chungkwong/sysu_thesis)
1. 感谢[@guanyingc](https://github.com/guanyingc)师兄在模板结构化分解上作出了[极大的贡献](https://github.com/guanyingc/SYSU-LaTex-Thesis)
1. 感谢@huangjj27师兄在模板样式规范化做出极大的贡献，感谢
1. 感谢@a20185 @Kinpzz @yttty @perqin @noeagles 等人[对v4.6.0作出极大的贡献](https://gitlab.com/sysu-gitlab/latex-group/thesis/merge_requests/32)
1. 感谢@the-1000th-summer [提供2020年本科毕业论文封面](https://gitlab.com/sysu-gitlab/latex-group/thesis/-/merge_requests/39)
1. PPT的模板源自<http://far.tooold.cn/post/latex/beamertsinghua>
1. 最后, 感谢Donald Ervin Knuth教授发明了`tex`这么好(zhe)用(teng)的工具

## 错误反馈以及改进
希望大家踊跃提出自己的想法，提交 pr和 issue，一起完善和改进该 $\LaTeX$ 模板， Make **SYSU** Great Again！
