\ProvidesClass{islamicbook}[2024/05/31 v0.1 wrapper to book for writing in arabic with focus on islamic writing]

\LoadClass[
    12pt,
    a4paper
]{book}


\RequirePackage[shortlabels]{enumitem}          %for enumerate envirnoment
\RequirePackage{titlesec}
\RequirePackage[
	colorlinks=true,
	linkcolor=blue,
	citecolor=cyan
    ]{hyperref}                             %For references and links
\RequirePackage{graphicx}                       %providing a key-value interface for optional arguments to the \includegraphics command.
\usepackage[
%	left=2cm,
%	right=2cm,
%	top=2cm,
%	bottom=2cm
]{geometry}
\RequirePackage[toc]{glossaries}
\RequirePackage[
    framemethod=TikZ,
    footnoteinside=false
]{mdframed}   %For boxed in boxes.

\RequirePackage[
    autostyle=true,
]{csquotes}

\DeclareQuoteStyle[guillemets]{arabic}
{\guillemotright}{\guillemotleft}
{\guilsinglright}{\guilsinglleft}

\DeclareQuoteAlias[guillemets]{arabic}{arabic}
\DeclareQuoteOption{arabic}

%===================language===============================
\RequirePackage{fontspec}
\RequirePackage{polyglossia}
\setdefaultlanguage[numerals=mashriq]{arabic}

\setmainfont{ScheherazadeNew}[  % needs ScheherazadeNew.ttf in the working directory.
Extension = .ttf ,
UprightFont = *-Regular ,
BoldFont = *-Bold ,
]

\RequirePackage[
    uthmani,
    nopar,
    wordwise
]{quran}

%===================chapter style==========================
\titleformat{\chapter}
  {\normalfont\Huge\bfseries}{\thechapter}{1em}{}
\titlespacing*{\chapter}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}


%===================own commands===========================
\newmdenv[
  leftmargin=1cm,
  rightmargin=2cm,
  topline=false,
  bottomline=false,
  leftline=false,
  skipabove=\topsep,
  skipbelow=\topsep
]{mdquote}

\newcommand{\hadith}[3][]
	{\begin{mdquote}
            {\scriptsize #1}

            #2%
	\footnotemark
	\end{mdquote}
	\footnotetext{{#3}}
}

\newcommand{\ayah}[3][]{
	\begin{quote}
    \char"FD3F\quranayah[#2][#3][#1]\char"FD3E
{ \footnotesize[\nolinebreak
سورة
\surahname*[#2]:#3]

}
	\end{quote}
}

\newcommand{\ayahinline}[3][]{%
\char"FD3F\quranayah[#2][#3][#1]\char"FD3E%
{\footnotesize[\nolinebreak
سورة
\surahname*[#2]:#3]
}{}}

%===================appearance=============================
\RequirePackage{titlesec}                       %A package providing an interface to sectioning commands for selection from various title styles.
\RequirePackage{xcolor}
\setlength\parindent{0pt}
\renewcommand\LayoutCheckField[2]{#1#2}
\fboxsep=0pt


