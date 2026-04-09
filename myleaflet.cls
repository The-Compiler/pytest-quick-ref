%%
%% This is file `leaflet.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% leaflet.dtx  (with options: `class')
%% 
%% (c) 1998 Jürgen Schlegelmilch    <schlegel@informatik.uni-rostock.de>
%% (c) 2000 Walter Schmidt            <w.a.schmidt@gmx.net>
%% (c) 2002-2004 Rolf Niepraschk      <Rolf.Niepraschk@gmx.de> and
%%               Hubert Gäßlein
%% (c) 2012-2020 Rolf Niepraschk      <Rolf.Niepraschk@gmx.de>
%% 
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%% 
%%    http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2003/12/01 or later.
%% 
%% This work has the LPPL maintenance status "author-maintained".
%% 
\ProvidesClass{leaflet}
  [2024/03/12 v2.1c LaTeX document class (JS,WaS,RN,HjG)]
\providecommand\IfFormatAtLeastTF{\@ifl@t@r\fmtversion}
\IfFormatAtLeastTF{2020/10/01}{}{%
  \ClassError{leaflet}{%
    LaTeX version equal to or newer \MessageBreak
    than '2020/10/01' is required%
  }{%
    Renew your TeX installation.%
  }%
}
\let\LL@begindvi\@begindvi
\@ifundefined{iflandscape}{\newif\iflandscape}{}%
\@ifundefined{iftwopart}{\newif\iftwopart}{}%
\newlength\LL@tempdima
\newcommand\LL@debug@info[1]{}%
\DeclareOption{dvips}{\PassOptionsToPackage{\CurrentOption}{graphics}}
\DeclareOption{pdftex}{\PassOptionsToPackage{\CurrentOption}{graphics}}
\DeclareOption{vtex}{\PassOptionsToPackage{\CurrentOption}{graphics}}
\DeclareOption{dvipdfm}{\PassOptionsToPackage{\CurrentOption}{graphics}}
\DeclareOption{twoside}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{landscape}{\landscapetrue}
\DeclareOption{portrait}{\landscapefalse}
\DeclareOption{debug}{\let\LL@debug@info\typeout}
\DeclareOption{twopart}{\twoparttrue}
\DeclareOption{notwopart}{\twopartfalse}
\newcommand*\LL@setPaperSize{}
\DeclareOption{a3paper}{\def\LL@setPaperSize{%
  \paperwidth=420mm\paperheight=297mm\relax}}%
\newcommand*\LL@selectOutput{}
\DeclareOption{frontside}{\def\LL@selectOutput#1#2{#1}}
\DeclareOption{backside}{\def\LL@selectOutput#1#2{#2}}
\DeclareOption{bothsides}{\def\LL@selectOutput#1#2{#1#2}}
\newcommand*\LL@foldmark{}
\DeclareOption{foldmark}{%
  \def\LL@foldmark{%
    \begingroup
      \linethickness{\foldmarkrule}%
      \@tempdima=\dimexpr\paperheight-\LL@tmargin
      \put(0,\@tempdima){%
        \line(0,-1){\foldmarklength}}%
    \endgroup}%
}
\DeclareOption{nofoldmark}{\def\LL@foldmark{}}%
\DeclareOption{foldcorr}{\foldcorrtrue}
\DeclareOption{nofoldcorr}{\foldcorrfalse}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\PassOptionsToClass{landscape,a4paper}{article}
\ExecuteOptions{foldmark,bothsides,landscape,notwopart}
\ProcessOptions\relax
\LoadClass{article}
\RequirePackage{graphicx}
\newcommand*\LL@pagesize@specials[2]{}
\@ifundefined{Gin@driver}{}{%
  \ifx\Gin@driver\@empty\else%
    \filename@parse{\Gin@driver}\@tempswafalse%
    \def\reserved@a{dvips}%
    \ifx\filename@base\reserved@a\@tempswatrue\fi%
    \def\reserved@a{dvipdfm}%
    \ifx\filename@base\reserved@a\@tempswatrue\fi%
    \if@tempswa
      \ClassInfo{leaflet}{Generating code for dvips}%
      \def\LL@pagesize@specials#1#2{%
        \@tempdima=#1\@tempdimb=#2 %
        \AtBeginDvi{\special{papersize=\the\@tempdima,\the\@tempdimb}}}%
    \fi
    \def\reserved@a{pdftex}%
    \ifx\filename@base\reserved@a
      \ClassInfo{leaflet}{Generating code for pdfTeX}%
      \def\LL@pagesize@specials#1#2{%
        \@tempdima=#1\@tempdimb=#2 %
        \pdfpagewidth\@tempdima\pdfpageheight\@tempdimb}%
    \fi
    \def\reserved@a{luatex}%
    \ifx\filename@base\reserved@a
      \ClassInfo{leaflet}{Generating code for LuaTeX}%
      \ifx\pdfpagewidth\@undefined
        \def\LL@pagesize@specials#1#2{%
          \@tempdima=#1\@tempdimb=#2 %
          \pagewidth\@tempdima\pageheight\@tempdimb}%
      \else
        \def\LL@pagesize@specials#1#2{%
          \@tempdima=#1\@tempdimb=#2 %
          \pdfpagewidth\@tempdima\pdfpageheight\@tempdimb}%
      \fi
    \fi
    \def\reserved@a{xetex}%
    \ifx\filename@base\reserved@a
      \ClassInfo{leaflet}{Generating code for XeTeX}%
      \def\LL@pagesize@specials#1#2{%
        \@tempdima=#1\@tempdimb=#2%
        \pdfpagewidth\@tempdima\pdfpageheight\@tempdimb}%
    \fi
    \def\reserved@a{vtex}%
    \ifx\filename@base\reserved@a
      \ClassInfo{leaflet}{Generating code for VTeX}%
      \def\LL@pagesize@specials#1#2{%
        \@tempdima=#1\@tempdimb=#2%
        \mediawidth\@tempdima\mediaheight\@tempdimb}%
    \fi
  \fi
}
\newcommand*\LL@CmdIgnored[1]{%
  \ClassWarning{leaflet}{%
    `\string#1' ignored}}
\setlength{\parskip}{1ex plus 2pt}
\@listi%
\setlength{\labelwidth}{\leftmargin}
\addtolength{\labelwidth}{-\labelsep}
\pagestyle{empty}
\AddToHook{cmd/maketitle/after}{\thispagestyle{empty}}%
\headheight\z@
\headsep\z@
\footskip\z@
\marginparwidth\z@
\marginparsep\z@
\sloppy
\setcounter{secnumdepth}{0}
\renewcommand\twocolumn[1][]{\LL@CmdIgnored{\twocolumn}}
\renewcommand\onecolumn{\LL@CmdIgnored{\onecolumn}}
\renewcommand\topfraction{0.7}
\renewcommand\bottomfraction{0.7}
\setlength{\textfloatsep}{10pt plus 4pt minus 3pt}
\setlength{\parindent}{\z@}
\setlength{\leftmargini}{1.5em}
\setlength{\leftmarginii}{1.5em}
\setlength{\leftmarginiii}{1.5em}
\setlength{\leftmarginiv}{1.5em}
\setlength{\leftmarginv}{1.5em}
\setlength{\leftmarginvi}{1.5em}
\setlength{\labelsep}{.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\def\noparskip{\par\vspace{-\parskip}}
\let\old@small\small
\renewcommand{\small}{\old@small\let\@listi\@listI}
\let\old@footnotesize\footnotesize
\renewcommand{\footnotesize}{\old@footnotesize\let\@listi\@listI}
\newcommand{\sectfont}{\bfseries}
\renewcommand\section{\@startsection{section}{1}{\z@}%
  {-3.5ex \@plus -.75ex}%
  {1ex} %{1.5ex}%
  {\normalfont\large\sectfont}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
  {-2.5ex plus -.5ex}%
  {1\p@} %{1ex}%
  {\normalfont\normalsize\sectfont}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
  {-2.5ex plus -.5ex}%
  {-1em}%
  {\normalfont\normalsize\sectfont}}
\def\part{\LL@CmdIgnored{\part}\secdef\@part\@spart}
\def\@part[#1]#2{}
\def\@spart#1{}

\renewcommand*\descriptionlabel[1]{%
  \hspace\labelsep\normalfont\descfont #1}
\newcommand*\descfont{\bfseries}
\iffalse
\g@addto@macro\enumerate{\parsep2\p@\@plus2\p@\@minus\z@}
\g@addto@macro\itemize{\parsep2\p@\@plus2\p@\@minus\z@}
\g@addto@macro\description{\parsep2\p@\@plus2\p@\@minus\z@}
\else
\newcommand*\LL@listsetup{%
  \parsep1ex\@plus.5ex\@minus.25ex%
  \LL@debug@info{***parsep=\the\parsep}%
  \itemsep\z@
  \LL@debug@info{***itemsep=\the\itemsep}%
  \topsep\z@
  \LL@debug@info{***topsep=\the\topsep}%
  \LL@debug@info{***partopsep=\the\partopsep}%
}
\def\enumerate{%
  \ifnum \@enumdepth >\thr@@\@toodeep\else
    \advance\@enumdepth\@ne
    \edef\@enumctr{enum\romannumeral\the\@enumdepth}%
    \expandafter
    \list
      \csname label\@enumctr\endcsname
      {\usecounter\@enumctr
        \def\makelabel##1{\hss\llap{##1}}%
        %\def\makelabel##1{##1\hfill}%
        %\def\makelabel##1{\hss##1}%
        \LL@listsetup
      }%
  \fi}
\def\itemize{%
  \ifnum \@itemdepth >\thr@@\@toodeep\else
    \advance\@itemdepth\@ne
    \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
    \expandafter
    \list
      \csname\@itemitem\endcsname
      {%
        \def\makelabel##1{\hss\llap{##1}}%
        %\def\makelabel##1{##1\hfill}%
        %\def\makelabel##1{\hss##1}%
        \LL@listsetup
      }%
  \fi}
\renewenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel
                        \LL@listsetup}}
               {\endlist}
\fi
\newcommand*\setmargins[4]{%
   \setlength\topmargin{#1}%
   \edef\LL@tmargin{\the\topmargin}%
   \setlength\evensidemargin{#2}%
   \textheight=\dimexpr\paperheight
     -\topmargin-\evensidemargin-\headheight-\headsep-\footskip
   \setlength\oddsidemargin{#3}%
   \setlength\evensidemargin{#4}%
   \textwidth=\dimexpr\paperwidth
     -\oddsidemargin-\evensidemargin-\marginparwidth-\marginparsep
   \addtolength\topmargin{-1in}%
   \addtolength\oddsidemargin{-1in}%
   \evensidemargin\oddsidemargin
}
\LL@setPaperSize
\paperwidth=0.333333334\paperwidth
\setmargins{11mm}{11mm}{8mm}{8mm}
\newcommand*\foldmarkrule{0.4pt}
\newcommand*\foldmarklength{2mm}
\providecommand*\vb@xt@{\vbox to}
\AtBeginDocument{\AddToHook{shipout/before}{\LL@processPage}}
\newcounter{LL@page}\setcounter{LL@page}{1}
\newcommand\LL@tempa{}
\newcommand*\LL@processPage{%
  \ifnum\c@LL@page<7\relax
    \LL@tempdima=\paperwidth
      \setbox\ShipoutBox\vbox{%
        \vbox{\@tempdima=1in\relax
          \@tempdimb=\paperheight\advance\@tempdimb-\@tempdima
          \pictur@(0,0)(\@tempdima,\@tempdimb)%
            \begingroup
              \set@typeset@protect
              \@nameuse{LL@smallPic\Roman{LL@page}}%
            \endgroup
          \endpicture
        }%
        \nointerlineskip\box\ShipoutBox
      }%
    \fi
  \stepcounter{LL@page}}

\LL@pagesize@specials{\paperwidth}{\paperheight}%
\endinput
%%
%% End of file `leaflet.cls'.
