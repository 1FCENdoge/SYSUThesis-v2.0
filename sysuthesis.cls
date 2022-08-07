% 定义模板样式
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sysuthesis}[2017/05/06 v4.5.3 Sun Yat-Sen University undergraduate thesis document class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[
    %fontset=adobe,
    %fontset=fandol,    % texlive自带，可移植字体库，只有常用的6763个汉字
    %fontset=ubuntu,
    %fontset=mac,
    fontset=windows,
    a4paper,
    %openright,
    openany,
    zihao=-4
]{ctexbook}

\def\@printtwoside{0} % 设置文章为电子版格式（不添加多余空白页）

% 配置英文字体
\RequirePackage{fontspec}
\setmainfont{Times New Roman}

\RequirePackage{fancyhdr}
\RequirePackage[top=1in, bottom=1in, left=1.25in, right=1.25in, headsep=0.2in, headheight=0.532cm, footskip=0.79cm]{geometry}
\RequirePackage{booktabs}
\RequirePackage{calc}
\RequirePackage{graphicx}
\RequirePackage{svg}
\RequirePackage[labelsep=space, justification=centering]{caption}
\RequirePackage{float}
\RequirePackage[font=footnotesize]{subcaption}
\RequirePackage{amsmath,amssymb,amsthm}
\RequirePackage{listings}
\RequirePackage{longtable}
\RequirePackage[section]{placeins}
\RequirePackage{enumitem}
\RequirePackage{bbm}
\RequirePackage{bm}
\RequirePackage[notlof,notlot,nottoc,numbib]{tocbibind} %table of content
\RequirePackage{tocloft}
\RequirePackage{wrapfig}
\RequirePackage{colortbl}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{makecell}
\RequirePackage[bottom, perpage]{footmisc}
\RequirePackage{setspace}
\RequirePackage{datetime}
\RequirePackage{nth}
% 引入调整段落整体宽度的宏包
\RequirePackage{changepage}
\RequirePackage{emptypage}
\RequirePackage{ulem}

% Insert a TRUE blank page which has no header or footer
\let\origdoublepage\cleardoublepage
\newcommand{\clearemptydoublepage}{
    \clearpage{
        \pagestyle{empty}
        \origdoublepage
    }
}
% 定义了一种新的clearpage方式，允许一个变量切换电子版及双面打印版
\newcommand{\newclearpage}{
    \if\@printtwoside1
        \clearemptydoublepage
    \else
        \clearpage
    \fi
}

% 设定时间为中文日期
\ctexset{today=small}

% 定义英文日期格式
\newcommand\etoday{
  \hspace{0.5\ccwd} \monthname[\the\month]\hspace{2\ccwd} \nth{\the\day}{\hspace{1\ccwd}} \the\year
}

\AtBeginDocument{
    \hypersetup{
        citecolor=green,
        filecolor=black,
        linkcolor=black,
        urlcolor=black,
        CJKbookmarks=true,
        pdftitle={\@ctitle},
        pdfauthor={\@cauthor},
        pdfkeywords={\@ckeywords},
        pdfcreator={LaTeX with hyperref package, using SYSU undergraduate Thesis LaTeX Template}
    }
}
\pagestyle{fancy}

% 有序与无序列表环境
\setlist[enumerate]{nosep}
\renewcommand\labelenumi{\theenumi)}
\setlist[itemize]{nosep}
\setlist[description]{nosep}

% 页眉、页脚、脚注设定
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\chaptermark}[1]{ \markboth{#1}{} }
% 采用带圈数字符号代替*号脚注
\xeCJKsetcharclass{`①}{`⑩}{1}
% 默认页面页眉页脚样式
\fancypagestyle{plain}{
    \fancyhf{}
    % 页码位于页脚居中
    \fancyfoot[C]{\zihao{-5}\thepage}
    % 居中式页眉，内容为中山大学硕士/博士学位论文
    \fancyhead[C]{\zihao{-5}中山大学硕士学位论文}
}
\pagestyle{plain}

% 中英文摘要页面样式
\fancypagestyle{cAbstract}{}
\fancypagestyle{eAbstract}{}

% 表格与图片标题设定
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
\setlength\heavyrulewidth{1.5pt}
\captionsetup{font=small,format=hang}
% 公式标题设定
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}

% 目录设定，使用tocloft宏包
\setcounter{secnumdepth}{3} % depth of toc, 2
\setcounter{tocdepth}{1}
% 如果要在目录中显示子章节请换用下面这行(目录中显示到x.y.z章)，如果不用这行默认显示到x.y章。
% \setcounter{tocdepth}{2}

% 目录标题：3号宋体加粗
\renewcommand{\cfttoctitlefont}{\hfill\zihao{3}\songti\bfseries}
\renewcommand{\cftlottitlefont}{\hfill\zihao{3}\songti\bfseries}
\renewcommand{\cftloftitlefont}{\hfill\zihao{3}\songti\bfseries}

% 目录中章节标题：四号黑体
\renewcommand{\cftchapfont}{\zihao{4}\heiti}
\renewcommand{\cftchappagefont}{\zihao{4}\heiti}

% 目录中其他内容：小四号宋体
\renewcommand{\cftsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsecpagefont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecfont}{\zihao{-4}\songti}
\renewcommand{\cftsubsecpagefont}{\zihao{-4}\songti}
\setlength{\cftsecindent}{2.3em}        % 小节缩进, 对齐章标题空隙

\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftafterlottitle}{\hfill}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftnodots}{\cftdotsep}     % 使用点指示页数

\addtolength{\cftchapnumwidth}{3\ccwd}
\newcommand\mybold[1]{\textit{\textbf{#1}}}

\newcommand{\norm}[1]{\left\lVert#1\right\rVert}
\newtheoremstyle{dotless}{3pt}{3pt}{\kaishu}{2em}{\heiti}{}{\ccwd}{}
\theoremstyle{dotless}
\newtheorem{theorem}{{定理}}[chapter]
\newtheorem{proposition}{{命题}}[chapter]
\newtheorem{lemma}{{引理}}[chapter]
\newtheorem{corollary}{{推论}}[chapter]
\newtheorem{definition}{{定义}}[chapter]
\newtheorem{remark}{{注记}}[chapter]
\newtheorem{eg}{例}[chapter]

\renewcommand{\proofname}{{\heiti 证明}}
\renewcommand{\@biblabel}[1]{[#1]\hfill}

\renewenvironment{proof}[1][\proofname]{\par
    \pushQED{\qed}
    \kaishu \topsep6\p@\@plus6\p@\relax
    \trivlist
    \item[\hskip\labelsep
                \itshape
        #1]\ignorespaces
}{
    \popQED\endtrivlist\@endpefalse
}

% 相关信息宏定义
\newcommand\ctitle[1]{\def\@ctitle{#1}}
\newcommand\etitle[1]{\def\@etitle{#1}}
\newcommand\covertitlefirst[1]{\def\@covertitlefirst{#1}}
\newcommand\covertitlesecond[1]{\def\@covertitlesecond{#1}}
\newcommand\covertitlethird[1]{\def\@covertitlethird{#1}}
\newcommand\cauthor[1]{\def\@cauthor{#1}} % 默认中文名为封面作者名字
\newcommand\eauthor[1]{\def\@eauthor{#1}}
\newcommand\cmajor[1]{\def\@cmajor{#1}}
\newcommand\emajor[1]{\def\@emajor{#1}}
\newcommand\cmentor[1]{\def\@cmentor{#1}}
\newcommand\ementor[1]{\def\@ementor{#1}}

\newlength{\@title@width}

\renewcommand\maketitle {
    \begin{titlepage}
        \begin{center}
            \includegraphics[width=10cm]{image/SYSULogo} \\
            \songti
            \vspace{\baselineskip}
            \zihao{1}{中山大学硕士学位论文} \\
            \vspace{1\baselineskip}

            {\fontsize{12}{10}\selectfont
            \begin{tabular}{l}
            	\hfill\zihao{3}\songti\bfseries\@covertitlefirst\hfill\\\vspace{1pt}\\
            	\hfill\zihao{3}\songti\textbf{\@covertitlesecond}\hfill\\\vspace{1pt}\\
            	\hfill\zihao{3}\songti\textbf{\@covertitlethird}\hfill\\\vspace{20pt}\\
            \end{tabular}
        	\begin{tabular}{l}
        		\zihao{4}{专业：}\@cmajor\\\vspace{4pt} \\
        		\zihao{4}{学位申请人：}\@cauthor\\\vspace{4pt} \\
        		\zihao{4}{指导教师：}\@cmentor\\\vspace{1pt} \\
            \end{tabular}
            }
        	\vspace{15pt}
%			\vspace{1\baselineskip}
			
   		 	\setlength{\@title@width}{6cm}
   		 	{\zihao{4}\songti{
   		 	\begin{tabular}{c}
     				论文答辩委员会主席:\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad \\
     				
     				%\vspace{12pt}
     				\underline{\makebox[\@title@width][c]{~}} \\
     				%\vspace{12pt}
     				论文答辩委员会成员:\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad\qquad \\
     				%\vspace{12pt}
   
     				\underline{\makebox[\@title@width][c]{~}} \\
     				~\\
     				\underline{\makebox[\@title@width][c]{~}}\\
     				~\\
     				\underline{\makebox[\@title@width][c]{~}}\\
     				~\\
     				\underline{\makebox[\@title@width][c]{~}}\\
   				\end{tabular}}	% 不加粗
%				\hspace{24pt}论文答辩委员会主席:
  		    }
            \vfill

            \zihao{-5}
            {\centering
            	{二〇二二年五月}
%                \ctexset{today=big}         % 汉字数字形式日期
%                \today     \\ % 使用最后一次编译的日期, 实现日期的自动化
                % Date:\hspace{0.5\ccwd} Month\hspace{2\ccwd} Day\hspace{1\ccwd} Year
%                Date: \etoday % 英文日期自动化
            }

        \end{center}
    \end{titlepage}
    \newclearpage
}


\newcommand\etitlefirst[1]{\def\@etitlefirst{#1}}
\newcommand\etitlesecond[1]{\def\@etitlesecond{#1}}


\newcommand\makedisclaim{
    \ctexset {
        chapter = {
%            titleformat = {\zihao{-2}\fangsong\bfseries},
			titleformat = {\zihao{-2}\heiti},
            beforeskip = {10pt},
            afterskip = {30pt}
        }
    }
    \input{docs/disclaim}
    \thispagestyle{empty}
    \newclearpage
}

% 摘要
\newcommand\ckeywords[1]{\def\@ckeywords{#1}}
\newcommand\ekeywords[1]{\def\@ekeywords{#1}}
\newcommand\cabstract[1]{\def\@cabstract{#1}}
\newcommand\eabstract[1]{\def\@eabstract{#1}}

% 中文摘要、关键字标题：5号黑体并加方括号
% 中文摘要、关键字内容：5号楷体

\newcommand\makecabstract{
	\ctexset{
		section = {
			titleformat = {\zihao{4}\heiti},
			beforeskip = {10pt},
			afterskip = {20pt}
		},
		paragraph/format = {}
	}
	
	\addcontentsline{toc}{chapter}{摘\hspace{\ccwd}要}
	\begin{center}
		\zihao{3}
		\mbox{ }\\
		\textbf{论文题目：\@ctitle} 
		\vspace{\baselineskip}\\
		\zihao{-3}
		\begin{tabular}{l}
			专\hspace{2\ccwd}业：\@cmajor \\
			硕\hspace{0.5\ccwd}士\hspace{0.5\ccwd}生：\@cauthor \\
			指导教师：\@cmentor
		\end{tabular}
		\vspace{\baselineskip}\\ 
		\zihao{-2}\heiti\textbf{摘要}
	\end{center}		
		\begin{spacing}{1.6}
			\zihao{-4} \songti\@cabstract
			~\\
		\end{spacing}
	\zihao{-4}\textbf{关键词：}\@ckeywords
		%\paragraph{\zihao{-4}\textbf{关键词：}\@ckeywords}
}

% 英文摘要、关键字标题：小四号新罗马体(Time New Roman)加粗并加方括号
% 英文摘要、关键字内容：小四号新罗马体(Time New Roman)
\newcommand\makeeabstract{
	\ctexset{
		section = {
			titleformat = {\zihao{4}\textbf},
			beforeskip = {10pt},
			afterskip = {20pt}
		}
	}
	
	\addcontentsline{toc}{chapter}{ABSTRACT}
	
	\begin{center}
		\zihao{3}
		\mbox{ }\\
		\textbf{Title: \@etitle} 
		\vspace{\baselineskip}\\
		\zihao{-3}
		\begin{tabular}{ll}
			Major: \@emajor \\
			Name: \@eauthor \\
			Supervisor: \@ementor
		\end{tabular}
		\vspace{\baselineskip}\\
		\zihao{-2} \textbf{ABSTRACT}
	\end{center}
		\begin{spacing}{1.6}
			\zihao{-4} \@eabstract
			~\\
		\end{spacing}
	\begin{spacing}{1.6}
		\noindent\zihao{-4}\textbf{Keywords: }\@ekeywords
	\end{spacing}
		%\paragraph{\textbf{Keywords: }}\zihao{-4}\indent \@ekeywords
}

\newcommand\makeabstract{
    \setcounter{page}{1}
    \makecabstract
    \thispagestyle{cAbstract}
    \newclearpage

    \makeeabstract
    \thispagestyle{eAbstract}
    \newclearpage
}
\newcommand\maketableofcontents{
    \pagestyle{plain}
    \tableofcontents
    \newclearpage
}

\renewcommand\mainmatter{
    \@mainmattertrue
    \pagenumbering{arabic}
    \ctexset {
        chapter = {
            %fixskip = true,
            beforeskip = {0pt},
            afterskip = {16.5pt},
            format = {\centering},
            nameformat = {\zihao{-2}\heiti},
            titleformat = {\zihao{-2}\heiti}
        },
        section = {
            %fixskip = true,
            beforeskip = {13pt},
            afterskip = {13pt},
            format = {},
%            nameformat = {\zihao{-3}\songti\bfseries},
%            titleformat = {\zihao{-3}\songti\bfseries}
            nameformat = {\zihao{-3}\heiti},
            titleformat = {\zihao{-3}\heiti}
        },
        subsection = {
            %fixskip = true,
            beforeskip = {10pt},
            afterskip = {10pt},
            format = {},
%            nameformat = {\zihao{-4}\songti\bfseries},
%            titleformat = {\zihao{-4}\songti\bfseries}
            nameformat = {\zihao{-4}\heiti},
            titleformat = {\zihao{-4}\heiti}
        },
        subsubsection = {
            beforeskip = {10pt},
            afterskip = {10pt},
            format = {},
%            nameformat = {\zihao{-4}\songti\bfseries},
%            titleformat = {\zihao{-4}\songti\bfseries}
            nameformat = {\zihao{-4}\heiti},
            titleformat = {\zihao{-4}\heiti}
            % 按照中大规定的格式需要显示成a.b.c.d章，而不是(d)节
            % number = {(\arabic{subsubsection})}
        }
    }

    \zihao{-4}\songti \linespread{1.6}\selectfont
    %\zihao{-4}\songti \linespread{1.5}\selectfont
    \pagestyle{plain}
}

\renewcommand\backmatter{
    \@mainmatterfalse
    \fancypagestyle{plain}{ }
    \pagestyle{plain}
}

% 参考文献
% 参考文献引用标记格式：右上角，带方括号
\RequirePackage[comma,square,super]{natbib}
% 标题与正文章节标题相同
% 内容小五号宋体
\newcommand\makereferences{
    \begingroup
        \ctexset {
            chapter = {
%                aftertitle = {：},
                format = {\centering},
%                format = {},
                titleformat = {\zihao{-2}\heiti}
            }
        }
    \endgroup
}

\newcommand\Nchapter[1]{%
	\if@mainmatter%
	\@mainmatterfalse%
	\chapter{#1}%
	\@mainmattertrue%
	\else
	\chapter{#1}%
	\fi}
\def\SYSU@label@publications{攻读硕士学位期间取得的研究成果}
\newenvironment{publications}[1]
{\heiti\Nchapter{\SYSU@label@publications}%
	\@mkboth{\MakeUppercase\SYSU@label@publications}
	{\MakeUppercase\SYSU@label@publications}%
	\list{\@biblabel{\@arabic\c@enumiv}}%
	{\settowidth\labelwidth{\@biblabel{#1}}%
		\leftmargin\labelwidth
		\advance\leftmargin\labelsep
		\@openbib@code
		\usecounter{enumiv}%
		\let\p@enumiv\@empty
		\renewcommand\theenumiv{\@arabic\c@enumiv}}%
	\sloppy
	\clubpenalty4000
	\@clubpenalty \clubpenalty
	\widowpenalty4000%
	\sfcode`\.\@m}
{\def\@noitemerr
	{\@latex@warning{Empty `publications' environment}}%
	\endlist}

% 附录样式
\renewcommand\appendix{\par
    \@mainmattertrue
    \fancypagestyle{plain}{
        %\fancyhead[R]{\zihao{-5} 附录\thechapter \leftmark}
    }
    \pagestyle{plain}
    \setcounter{chapter}{0}
    \setcounter{section}{0}
    \gdef\@chapapp{\appendixname}
    \gdef\thechapter{\@Alph\c@chapter}
    \gdef\CTEX@prechapter{\CTEX@preappendix}
    \gdef\CTEX@thechapter{\CTEX@appendix@number}
    \gdef\CTEX@postchapter{}
    \ctexset {
        chapter = {
            format = {\centering},
            nameformat = {\zihao{-2}\heiti},
            titleformat = {\zihao{-2}\heiti},
        },
        section = {
            format = {\centering},
            nameformat = {\zihao{-3}\heiti},
            titleformat = {\zihao{-3}\heiti}
        },
        subsection = {
            format = {\centering},
            nameformat = {\zihao{-4}\heiti},
            titleformat = {\zihao{-4}\heiti}
        }
    }
}


% 配置超链接。
% hyperref一般要求是导言区最后一个宏包，才能正常工作
% 若把该宏包提前，则会引起附录列表跳转到第一章的问题
\RequirePackage[hidelinks, hyperfootnotes=true]{hyperref}
\RequirePackage{footnotebackref}

\renewcommand{\@fnsymbol}[1]{
    \ifcase#1\or \text{①}\or \text{②}\or \text{③}\or    \text{④}\or \text{⑤}\or \text{⑥}\or \text{⑦}\or \text{⑧} \or \text{⑨} \or \text{⑩}
    \else
        \@ctrerr
    \fi
}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
