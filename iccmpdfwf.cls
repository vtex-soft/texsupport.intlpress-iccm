%%
%% This is file `iccmpdfwf.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% iccmpdfwf.dtx  (with options: `class')
%% 
%% Copyright (C) 2016 by L. Tolen\.{e}, VTEX UAB
%% Mokslininku 2a, LT-08412 Vilnius, Lithuania
%% --------------------------------------------------------------------------
%%
%% PURPOSE: The ICCM journal style class.
%% SOURCE: The initial source code was iccm_notes.cls.
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{iccmpdfwf}
    [2023/06/20 v2.09, driver class for journal ICCM]

%%  CLASS FILE CONTENT:
%%  - VTeX SETUP
%%  - PAGE LAYOUT
%%  - FONT
%%  - ATTRIBUTES
%%  - PREAMBLE
%%  > FRONTMATTER
%%    - HISTORY
%%    - RUNNING HEAD
%%    - TITLES
%%    - AUTHORS
%%    - THANKS
%%    - ABSTRACT
%%    - KEYWORDS
%%  < FRONTMATTER
%%  - FOOTNOTE
%%  - SECTIONS
%%  - APPENDIX
%%  - TABLE OF CONTENTS
%%  - LIST ENVIRONMENTS
%%  - FLOATS
%%  - MATH
%%  - THE BIBLIOGRAPHY
%%  - SMART \verb|\MR|
%%  - REFERENCES
%%  - INICIALIZATION

%%
%%  ======= VTeX SETUP =======
%%
\def\@vtexname{VTeX}
\def\@vtexpublisher{intlpress}
\def\@vtexproject{iccmpdfwf}
\def\journal@name{ICCM Notices}

\RequirePackage{etoolbox}
\RequirePackage{graphicx}

\@ifundefined{pdfoutput}{%
    \RequirePackage{luatex85}%
    \newdimen\pdfeachlineheight
    \newdimen\pdfeachlinedepth
    \newdimen\pdflastlinedepth
    \newdimen\pdffirstlineheight
    \newdimen\pdfignoreddimen
    \edef\pdfpkfixeddpi {\pdfvariable pkfixeddpi}%
    \edef\pdfignoreunknownimages {\pdfvariable ignoreunknownimages}%
    \edef\pdfomitcidset {\pdfvariable omitcidset}%
    \edef\pdfxformmargin {\pdfvariable xformmargin}%
    \edef\pdfsuppressoptionalinfo {\pdfvariable suppressoptionalinfo }%
    \edef\pdftrailerid {\pdfvariable trailerid } } { }

\newif\if@load@natbib@\@load@natbib@true
\DeclareOption{nonatbib}{\@load@natbib@false}

\newif\if@numbered@bibliography\@numbered@bibliographytrue
\DeclareOption{authoryear}{\@numbered@bibliographyfalse}

\newif\if@numbered@section\@numbered@sectiontrue
\DeclareOption{numsec}{\@numbered@sectiontrue}

\newif\if@section@eqno\@section@eqnotrue
\DeclareOption{eqsecno}{\@section@eqnotrue}

\PassOptionsToClass{a1paper,12pt,twoside}{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*

\LoadClass{article}
%%
%%  ======= PAGE LAYOUT =======
%%
\RequirePackage{cuted}

\def\trim@width      {7in}      %PAGE SIZE GLOBAL
\def\trim@height     {10in}
\def\@page@headheight{12\p@}  
\def\@page@headsep   {12\p@}
\def\@page@footskip  {16\p@}

\usepackage[
    nopagenumbers,
    papersize={\trim@width,\trim@height},
    textwidth=372\p@,
    textheight=\dimexpr(590\p@ + \@page@headheight + \@page@headsep + \@page@footskip)\relax,
    topmargin=36\p@, %top margin
    headheight=12\p@,
    headsep=12\p@,
    strictheight,
    leftmargin=0.84in,
    footskip=16\p@  %between line and text
    ]{zwpagelayout}

\setlength\parindent{0.2in}
\setlength\columnsep{0.1in}

\setlength\smallskipamount{8\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount  {12\p@ \@plus 3\p@ \@minus 3\p@}
\setlength\bigskipamount  {16\p@ \@plus 3\p@ \@minus 3\p@}
%%
%%  ======= FONT =======
%%     %FONT SIZE GLOBAL
\renewcommand\normalsize{%
    \@setfontsize\normalsize{10.5\p@}{13.6\p@ plus .3\p@ minus .3\p@}% 
    \abovedisplayskip 10\p@ \@plus2\p@ \@minus2\p@
    \abovedisplayshortskip 6\p@ \@plus2\p@
    \belowdisplayshortskip 6\p@ \@plus2\p@
    \belowdisplayskip \abovedisplayskip
    \let\@listi\@listI
    }
\renewcommand\small{%
    \@setfontsize\small{10.5}{11.5}%
    \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
    \abovedisplayshortskip \z@ \@plus2\p@
    \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
    \def\@listi{\leftmargin\leftmargini
                \topsep 4\p@ \@plus2\p@ \@minus2\p@
                \parsep 2\p@ \@plus\p@ \@minus\p@
                \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip
    }

\let\article@footnotesize\footnotesize
\renewcommand\footnotesize{%
    \@setfontsize\footnotesize{8.4\p@}{10}%
    \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
    \abovedisplayshortskip \z@ \@plus\p@
    \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
    \def\@listi{\leftmargin\leftmargini
                \topsep 3\p@ \@plus\p@ \@minus\p@
                \parsep 2\p@ \@plus\p@ \@minus\p@
                \itemsep \parsep}%
    \belowdisplayskip \abovedisplayskip
    }

\renewcommand\scriptsize{\@setfontsize\scriptsize{8.3}{9.45}}
\renewcommand\tiny{\@setfontsize\tiny{5.25}{6.3}}
\renewcommand\large{\@setfontsize\large{10.5}{11}}
\renewcommand\Large{\@setfontsize\Large{13}{16}}
\renewcommand\LARGE{\@setfontsize\LARGE{17.8}{23.2}}
\renewcommand\huge{\@setfontsize\huge{21}{26.25}}
\renewcommand\Huge{\@setfontsize\Huge{23}{25}}

\@input{iccm-vtex.cfg}

\def\normaltext{%
    \let\\=\@normalcr
    \leftskip\z@ \@rightskip\z@ \rightskip\@rightskip
    \parfillskip\@flushglue
    }

\def\raggedrightmargin#1{%
    \let\\\@centercr\@rightskip #1 plus 1fil  \rightskip\@rightskip
    \leftskip\z@skip
    \parindent\z@\nohyphen
    }
\def\nohyphen{%
    \pretolerance=\@M \tolerance=\@M \hyphenpenalty=\@M \exhyphenpenalty=\@M
    }
%%

\def\abstractlocation#1{%
    \let\\ \@centercr\@rightskip #1 plus 1fil  
    \rightskip=2pc
    \leftskip=2pc
    \parindent\z@\nohyphen
    }

\def\abstractlocationnew#1{%
    \let\\ \@centercr\@rightskip #1 plus 1fil  
    \rightskip=2pc
    \leftskip=2pc
    \parindent\z@\nohyphen
    }    
%%  ======= ATTRIBUTES =======
%%
\def\frontmatter@style{%
    \null
    \vskip12\p@
    }
\def\title@style{\raggedrightmargin{0pc}}
\def\author@style{\raggedrightmargin{0pc}}
\def\abstract@style{\abstractlocation{0pc}} 
\def\abstractint@style{\abstractlocationnew{0pc}}%Use this or textwidth
\def\keyword@style{\normaltext}

\def\title@skip{12\p@}  %title top skip                 %Most of the font size here except for section title
\def\subtitle@skip{16\p@}
\def\authors@skip{10\p@}
\def\abstract@skip{16\p@}
\def\abstractname@skip{\hskip10\p@}
\def\keyword@skip{10\p@}

\def\keyword@width{.8\textwidth}

\def\abstract@indent{0\p@}
\def\keyword@indent{0\p@}

\def\title@size{\Huge\sc}
\def\subtitle@size{\Large\sc}
\def\author@size{\Large\sc}
\def\abstract@size{\normalsize\upshape\mdseries}
\def\abstractname@size{\normalsize\sc}
\def\abstractnameint@size{\normalsize}
\def\keyword@size{\normalsize\upshape\mdseries}
\def\keywordname@size{\scshape}
\def\copyright@size{\large}
\def\pagenumber@size{\small\upshape}
\def\thebibliography@size{\small}
%%
%%  ======= PREAMBLE =======
%%
\def\pubyear#1{\gdef\@pubyear{#1}\gdef\@copyrightyear{#1}}
    \def\@pubyear{}
    \def\@copyrightyear{}
\def\volume#1{\gdef\@volume{#1}}
    \gdef\@volume{}
\def\issue#1{%
    \gdef\@issue{Number\ #1}%
    \ifx\@month\@empty
        \ifx#11\relax
            \gdef\@month{July}%
        \else
            \ifx#12\relax
                \gdef\@month{December}%
            \else
                \gdef\@month{???}%
            \fi
        \fi
    \fi
    }
    \gdef\@issue{}

\newcounter{firstpage}
\newcounter{lastpage}
\def\firstpage#1{%
    \def\@tempa{#1}%
    \ifx\@tempa\@empty
    \else
        \global\c@firstpage=#1
        \global\c@lastpage=#1
        \global\c@page=#1
        \ignorespaces
    \fi
    }
\def\lastpage#1{%
    \def\@tempa{#1}%
    \ifx\@tempa\@empty
    \else
        \global\c@lastpage=#1
        \ignorespaces
    \fi
    }

\def\set@pagerange{%
    \ifnum\c@firstpage=0
    \else
        \ifnum\c@firstpage=\c@lastpage
             \gdef\@pagerange{\thefirstpage}%
        \else
             \gdef\@pagerange{\thefirstpage\pagerange@sep\thelastpage}%
        \fi
    \fi
    }
\def\@pagerange{}
\def\pagerange@sep{--}

\def\pagenumbering#1{%
    \gdef\thefirstpage{\csname @#1\endcsname\c@firstpage}%
    \gdef\thelastpage{\csname @#1\endcsname\c@lastpage}%
    \gdef\thepage{\csname @#1\endcsname\c@page}%
    }

\def\startlocaldefs{\makeatletter}
\def\endlocaldefs{\makeatother}

\gdef\@id@line{}

\def\ps@copyright{%
   \let\@mkboth\@gobbletwo
   \def\@oddhead{\ifnum \thepage=1 % use different formatting for first page
           {{\hspace{-2.2cm}\includegraphics[height=2cm]{head.pdf}}
           }%
       \else % use regular formatting for all other pages
           \centering\hfill\sc\@runtitle\hfill
                \fi
                          }
  \def\@evenhead{%
      \centering\hfill\sc\@runauthor\hfill
       }
    \def\@oddfoot{%
        \fmt@copyright@info{\expandafter\sc\expandafter{\@month}\ \@pubyear\hfill}%
                           {\hfill{\sc\journal@name}\hfill}%
                           {\sc\hfill\thepage}%
        }%
    \def\@evenfoot{%
        \fmt@copyright@info{\sc\thepage\hfill}%
                           {\hfill{\sc\journal@name}\hfill}%
                           {\hfill \expandafter\sc\expandafter{Vol.\@volume}%
                         }%
        }%
    }

\let\proof@id@line\relax

\def\fmt@copyright@info#1#2#3{%
    \vtop to0\p@{%
        \hsize=\textwidth\hrule height 0.5\p@\hfil
        \kern-\parindent\lower 10\p@
        \hbox to\textwidth{%
            \copyright@size\hb@IIIwd{#1}\hfill\hb@IIIwd{#2}\hfill\hb@IIIwd{#3}%
            }%
        }%
    }
\def\hb@IIIwd #1{\hbox to 0.33\textwidth{#1}}

\def\pubmonth#1{\gdef\@month{#1}}
\gdef\@month{June}

%%
%%  >>>>>>> FRONTMATTER >>>>>>>
%%
\def\frontmatter{%
    \global\c@author\z@
    \parindent\z@
    \renewcommand\thefootnote{\expandafter\@fnsymbol\the\c@footnote}%
    \global\let\maketitle\relax
    \open@fm \ignorespaces
    }
    
\def\endfrontmatter{%
    \global\@topnum\z@  % Prevents figures from going at top of page.
    \set@pagerange
    \thispagestyle{copyright}%
    \vskip18\p@
    \close@fm
    \@thanks
    \global\c@footnote\z@
    \global\let\@thanks\@empty
    \let\title\relax
    \let\author\relax
    \let\frontmatter\relax
    \let\endfrontmatter\relax
    \let\@maketitle\relax
    \let\@@maketitle\relax
    \aftergroup\frontmatter@cmd
    %  Writing PDF metadata to AUX file
    \write@pdfinfo{\hy@title}{\@title}%
    \write@pdfinfo{\hy@author}{\author@group}%
    \write@pdfinfo{\hy@subject}{\journal@name\space \@copyrightyear\space Volume \@volume\space \@issue\space \@pagerange}%
    \write@pdfinfo{\hy@keywords}{\the\keywords@list}%
    \write\@mainaux{\string\gdef\string\author@num{\the\c@author}}%
    %  Generating PDF metadata
    \hypersetup{%
        pdfinfo={%
            Title={\@title},
            Subject={\hy@subject},
            Author={\author@group},
            Creator={\@vtexname},
            Producer={\@vtexname}
            }%
        }%
    }

\def\open@fm{%
    \newbox\fm@box
    \global\setbox\fm@box=\vbox
    \bgroup
        \hsize=\textwidth
        \frontmatter@style
    }
\def\close@fm{%
        \par
    \egroup
    \newdimen\fm@size
    \fm@size=\dp\fm@box \advance\fm@size by \ht\fm@box
    \@whiledim\fm@size>\t@xtheight \do{%
        \global\setbox\@tempboxa=\vsplit\fm@box to \t@xtheight
        \unvbox\@tempboxa
        \fm@size=\dp\fm@box \advance\fm@size by \ht\fm@box
        }%
    \emergencystretch=1pc 
    \unvbox\fm@box
    }

\def\frontmatter@cmd{%
    \abstract@fmt
    \keyword@fmt
    \if@tempswa
        \medskip
    \fi
    }
%%
%%  ======= HISTORY =======
%%
\def\history@exist{0}

\def\history@prefix{}
\def\history@width{\textwidth}
\def\history@style{\centering}
\def\history@skip{\medskipamount}
\def\history@size{\normalsize\itshape\mdseries\parindent\z@}
\def\history@postfix{}

\def\received@prefix{Received~}
\def\received@postfix{}
\def\revised@prefix{; revised~}
\def\revised@postfix{}
\def\accepted@prefix{; accepted~}
\def\accepted@postfix{}

\def\received#1{%
    \def\@tempa{#1}%
    \ifx\@tempa\@empty
    \else
        \gdef\@received{#1}%
        \gdef\history@exist{1}%
    \fi
    }
\def\@received{\@nil}
\def\revised#1{%
    \def\@tempa{#1}%
    \ifx\@tempa\@empty
    \else
        \gdef\@revised{#1}%
        \gdef\history@exist{1}%
    \fi
    }
\def\@revised{\@nil}
\def\accepted#1{%
    \def\@tempa{#1}%
    \ifx\@tempa\@empty
    \else
        \gdef\@accepted{#1}%
        \gdef\history@exist{1}%
    \fi
    }
\def\@accepted{\@nil}

\def\empty@data{\@nil}

\def\history@fmt{%
    \ifcase\history@exist
    \else
        \bgroup
            \nobreak
            \vskip\history@skip
            \nobreak
            \history@style
            \history@size
            \leavevmode
            \history@prefix
            \ifx\@received\empty@data
            \else
                \received@prefix\@received \received@postfix
            \fi
            \ifx\@revised\empty@data
            \else
                \revised@prefix\@revised \revised@postfix
            \fi
            \ifx\@accepted\empty@data
            \else
                \accepted@prefix\@accepted \accepted@postfix
            \fi
            \history@postfix\par
        \egroup
        \gdef\history@exist{0}
    \fi
    }

\def\setvaluelist#1#2{%
    \@tempcnta=0\relax
    \@for\@curr@val:=#2\do{%
        \advance\@tempcnta by1\relax
        \expandafter\protected@xdef\csname #1@item@\the\@tempcnta\endcsname{\@curr@val}%
        }%
    \expandafter\protected@xdef\csname #1@item@0\endcsname{\the\@tempcnta}%
    }
\xdef\getitemvalue#1#2{\noexpand\csname #1@item@#2\endcsname}

\def\sday#1{#1}
\def\smonth#1{%
    \@ifundefined{month@item@#1}%
                 {\@latex@error{The `#1' month does not exist!}{??}}%
                 {\getitemvalue{month}{#1}}%
    }%
\def\syear#1{#1}
\setvaluelist{month}{January,February,March,April,May,June,July,August,September,October,November,December}

\def\set@history@fmt{%
    \let\sv@thebibliography\thebibliography
    \def\thebibliography{\history@fmt\sv@thebibliography}%
    }

\AtBeginDocument{\set@history@fmt}
%%
%%  ======= RUNNING HEAD =======
%%
\def\runtitle#1{\gdef\@runtitle{#1}}
    \def\@runtitle{}
\def\runauthor#1{{\def\etal{et al.}\gdef\@runauthor{#1}}}
    \def\@runauthor{}
%%
%%  ======= TITLES =======
%%
\def\title#1{%
    \gdef\@title{#1}%
    \vglue\title@skip
    \bgroup
        \title@style\title@size#1\par
    \egroup
    }

\def\subtitle#1{%
    \smart@par
    \vskip\subtitle@skip
    \leavevmode
    \bgroup
        \subtitle@size#1\par
    \egroup
    }
\def\smart@par{\ifhmode\par\fi}
%%
%%  ======= AUTHORS =======
%%
\newcounter{author}
\def\author{\@ifnextchar[{\author@fmt}{\author@fmt[]}}
\def\author@fmt[#1]#2{%
    \stepcounter{author}%
    \@tempcnta=\author@num\relax
    \ifnum\c@author=1
        \def\author@sep{}%
    \else
        \ifnum\c@author=\@tempcnta
            \def\author@sep{ and }%
        \else
            \def\author@sep{, }%
        \fi
    \fi
    \ifx\author@group\@empty
        \vskip\authors@skip
        \leavevmode
    \fi
    \bgroup
        \no@harm
        \xdef\author@group{\author@group\author@sep #2}%
    \egroup
    \gdef\addr@author@sep{, }%
    \noindent\author@style\author@size#2\thanksref{#1}%
    }
\def\author@num{0}
\def\author@group{}

\def\no@harm{%
    \let\thanks=\@gobble
    \let\thanksref=\@gobble
    \let~\space
    \def\ead[##1]##2{}%
    \let\\=\@empty
    \def\protect{\noexpand\protect\noexpand}%
    }
%%
%%  ======= THANKS =======
%%
\let\thanksnewlabel\newlabel

\let\orig@footnotetext\@footnotetext

\DeclareRobustCommand{\thanksref}{%
    \@ifnextchar[{\@tempswatrue\@thanksref}{\@tempswafalse\@thanksref[]}%
    }
\def\@thanksref[#1]#2{%
    \if@tempswa
        \thanksmark@fmt{#1}%
    \else
        \let\@tempa\@empty
        \thanksmark@fmt{%
            \@for\@tempb:=#2\do{%
                \csname thanksref@hook\endcsname
                \@tempa\let\@tempa\thanksref@sep
                \edef\@tempb{\expandafter\@firstofone\@tempb\@empty}%
                \thankref@hyperlink{\@tempb}%
                }%
            }%
    \fi
    }
\def\thanksref@sep{,}
\def\thankref@hyperlink#1{\saferef{#1thanks}}

%%  Hook for the hyperref
\def\thanks@hypertarget#1{}
\def\thanksmark{%
    \@ifnextchar[{\@tempswatrue\@thanksmark}{\@tempswafalse\@thanksmark[]}%
    }
\def\@thanksmark[#1]#2{%
    \@thankslabel[#1]{#2}%
    \thanksmark@fmt{\expandafter\saferef{#2thanks}\thanks@hypertarget{#2}}%
    }
\def\@thankslabel[#1]#2{%
    \if@tempswa
         \protected@edef\@currentlabel{#1}%
    \else
        \refstepcounter{\current@thankscounter}%
    \fi
    \safelabel{#2thanks}%
    }
\def\safelabel#1{%
    \@ifundefined{thanksnewlabel@#1}{%
        \@bsphack
            \protected@write\@auxout{}{\string\thanksnewlabel{#1}{{\@currentlabel}{\thepage}}}%
        \@esphack
        }{}%
    \@namedef{thanksnewlabel@#1}{}%
    }
\let\thanksnewlabel\newlabel
\def\thanksmark@fmt#1{\@textsuperscript{\normalfont#1}}
%%  To be safe with hyperref we will use original LaTeX definitions
\def\saferef#1{\expandafter\safe@setref\csname r@#1\endcsname\@firstoftwo{#1}}
\let\safe@setref\@setref

\def\thankstext{%
    \@ifnextchar[{\@tempswatrue\@thankstext}{\@tempswafalse\@thankstext[]}%
    }
\def\@thankstext[#1]#2#3{%
    \@thankslabel[#1]{#2}%
    \protected@xdef\@thanks{\@thanks\protect\thanks@thefnmark{#2thanks}%
    \protect\orig@footnotetext{\thanks@hypertarget{#2}#3}}%
    }
\def\thanks@thefnmark#1{%
    \begingroup
        \unrestored@protected@xdef\@thefnmark{\saferef{#1}}%
    \endgroup
    }
%%
%%  ======= ABSTRACT =======
%%
\def\abstractname{Abstract.}

\newbox\abstract@box
\newdimen\sv@parindent
\sv@parindent\parindent

\gdef\abstract{\@ifnextchar[{\@abstract}{\@abstract[]}}
\def\@abstract[#1]{%
    \global\setbox\abstract@box=\vbox
    \bgroup
        \hsize=\columnwidth 
        \ifvoid\abstract@box
        \else
            \unvbox\abstract@box
            \vskip\abstract@skip
        \fi
        \abstract@style
        \abstract@size
        \ifx\abstractname\empty
            \parindent\sv@parindent
        \else
            \noindent
            \hskip\abstract@indent{\abstractname@size\abstractname\abstractname@skip}%
        \fi
        \ignorespaces    
    }
\def\endabstract{%
        \par
    \egroup
    }

\gdef\abstractint{\@ifnextchar[{\@abstractint}{\@abstractint[]}}
\def\@abstractint[#1]{%
    \global\setbox\abstract@box=\vbox
    \bgroup
        \hsize=\columnwidth 
        \ifvoid\abstract@box
        \else
            \unvbox\abstract@box
            \vskip\abstract@skip
        \fi
        \abstractint@style
        \abstract@size
        \ifx\abstractnamenew\empty
            \parindent\sv@parindent
        \else
            \noindent
            \hskip\abstract@indent{\abstractnameint@size\abstractnamenew\abstractname@skip}%
        \fi
        \ignorespaces    
    }
\def\endabstractint{%
        \par
    \egroup
    }    

\def\abstract@fmt{%
    \ifvoid\abstract@box
    \else
    \@tempswatrue
        \vskip\abstract@skip
        \unvbox\abstract@box
    \fi
    }
%%
%%  ======= KEYWORDS =======
%%
\newbox\keyword@box
\newdimen\pre@kwd@depth

\def\keyword@AMS{AMS 2000 subject classifications:}
\def\keyword@MSC{MSC 2010 subject classifications:}
\expandafter\def\csname keyword@MSC2010\endcsname{MSC 2010 subject classifications:}
\def\keyword@KWD{Keywords and phrases:}
\def\keyword@class{KWD}

\gdef\keyword{\@ifnextchar[{\@keyword}{\@keyword[class=KWD]}}

\gdef\@keyword[#1]{%
    \do@option@list{keyword}{#1}%
    \def\keyword@name{\csname keyword@\keyword@class\endcsname}%
    \let\kwd@sep\relax
    \global\setbox\keyword@box=\vbox
    \bgroup
        \ifvoid\keyword@box
        \else
            \unvbox\keyword@box
            \vskip-\pre@kwd@depth\vtop to\pre@kwd@depth{}%
        \fi
        \hsize=\columnwidth
        \keyword@style
        \keyword@size
        \parindent\sv@parindent
        \noindent
        \hskip\keyword@indent{\keywordname@size\keyword@name}\space\hskip.1\p@
    }
\def\endkeyword{%
        \unskip.\par\global\pre@kwd@depth\prevdepth
    \egroup
    }

\def\sep@key@value#1=#2/?/#3{\expandafter\def\csname#3@#1\endcsname{#2}}
\def\do@option@list#1#2{%
    \@for\curr@option:={#2}\do{%
        \expandafter\sep@key@value\curr@option/?/{#1}\relax
        }%
    }

\def\keyword@fmt{%
    \ifvoid\keyword@box
    \else
        \vskip\keyword@skip
        \unvbox\keyword@box
    \fi
    }

%%  \kwd[; ]{foo}
\def\sep{\unskip\string, }
\newif\if@firstkeywordinlist \@firstkeywordinlisttrue

\DeclareRobustCommand*\kwd{\@ifnextchar[\@kwd{\@kwd[\kwd@sep]}}
\def\@kwd[#1]#2{%
    \unskip#1{#2}%
    \if@firstkeywordinlist
        \addto@keywords@list{#2}\@firstkeywordinlistfalse
    \else
        \addto@keywords@list{, #2}%
    \fi
    \let\kwd@sep\sep
    }
\newtoks\keywords@list
\def\addto@keywords@list#1{%
    \begingroup
        \no@harm
        \xdef\@act{\global\noexpand\keywords@list{\the\keywords@list#1}}%
        \@act
    \endgroup
    }
%%
%%  <<<<<<< FRONTMATTER <<<<<<<
%%
%%
%%  ======= FOOTNOTE =======
%%
\newbox\fnmark@box
\def\@makefnmark{\@textsuperscript{\normalfont\@thefnmark}}%

\renewcommand\@makefntext[1]{%
    \bgroup
        \expandafter\def \csname S@8\endcsname {%
            \def \tf@size {8}\def \sf@size {4}\def \ssf@size {5}%
            }%
        \@makefnmark\ #1%
    \egroup
    }

\def\footnoterule{%
    \kern-5\p@ \hrule width 32mm height 0.5\p@ depth0\p@
    \kern 6\p@  %% The \hrule is hairline
    }

\RequirePackage{stfloats}
\fnbelowfloat
%%
%%  ======= SECTION =======
%%
%%  Code from latex.ltx. Improvements:
%%  1. if section command is defined as "inline" the '.' will be inserted after heading;
%%  2. section* will write to toc and will appear in pdf bookmarks
\def\@startsection#1#2#3#4#5#6{%
    \if@noskipsec
        \leavevmode
    \fi
    \par
    \@tempskipa #4\relax
    \@afterindenttrue
    \ifdim \@tempskipa <\z@
        \@tempskipa -\@tempskipa \@afterindentfalse
    \fi
    \if@nobreak
        \everypar{}%
    \else
        \addpenalty\@secpenalty\addvspace\@tempskipa
    \fi
    \@ifstar
        {\def\ssection@level{#2}\@ssect{#3}{#4}{#5}{#6}}%
        {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}%
    }

%%  \section - will add hook for the dot after section heading
\def\@sect#1#2#3#4#5#6[#7]#8{%
    \ifnum #2>\c@secnumdepth
        \let\@svsec\@empty
    \else
        \refstepcounter{#1}%
        \protected@edef\@svsec{\@seccntformat{#1}\relax}%
    \fi
    \@tempskipa #5\relax
    \ifdim \@tempskipa>\z@
        \begingroup
            #6{\@hangfrom{\hskip #3\relax\@svsec}%
               \interlinepenalty \@M #8\@@par}%
        \endgroup
        \csname #1mark\endcsname{#7}%
        \addcontentsline{toc}{#1}{%
            \ifnum #2>\c@secnumdepth
            \else
                \protect\numberline{\csname the#1\endcsname}%
            \fi
            #7%
            }%
    \else
        \def\@svsechd{%
            #6{\hskip #3\relax
               \@svsec #8}%
            \csname #1mark\endcsname{#7}%
            \addcontentsline{toc}{#1}{%
                \ifnum #2>\c@secnumdepth
                \else
                    \protect\numberline{\csname the#1\endcsname}%
                \fi
                #7%
                }%
            }%
    \fi
    \@xsect{#5}%
    }

%%  \section* - will add hook for the dot after section heading and \contentsline
\def\@ssect#1#2#3#4#5{%
    \@tempskipa #3\relax
    \ifdim \@tempskipa>\z@
        \begingroup
            #4{\@hangfrom{\hskip #1}%
               \interlinepenalty \@M #5\@@par}%
        \endgroup
    \else
        \def\@svsechd{#4{\hskip #1\relax #5}}%
    \fi
    \ifnum\ssection@level=\@ne
        \phantomsection\addcontentsline{toc}{section}{#5}%
    \fi
    \@xsect{#3}%
    }

%%  Numbered section
\if@numbered@section
    \def\@seccntformat#1{{%
        \csname #1@prefix\endcsname
        \csname the#1\endcsname
        \csname#1@numbersep\endcsname
        \enspace
        }}
\else
    \def\@seccntformat#1{}
\fi

\setcounter{secnumdepth}{4}

\newcommand{\smallcaps}[1]{\textsc{#1}}
\renewcommand\section{
\@startsection{section}{1}{\z@}%
                 {\bigskipamount}%
                 {\smallskipamount}%
        {\raggedright\Large\mathversion{bold}\textsc}}
                  
\renewcommand\subsection{%
    \@startsection{subsection}{2}{\z@}%
                  {\bigskipamount}%
                  {\smallskipamount}%
                  {\raggedright\mathversion{bold}\textsc}}
\renewcommand\subsubsection{%
    \@startsection{subsubsection}{3}{12\p@}%
                  {\smallskipamount}%
                  {\smallskipamount}%
                  {\raggedright\sffamily}}
\renewcommand\paragraph{%
    \@startsection{paragraph}{4}{\z@}%
                  {\smallskipamount}%
                  {-1em}%
                  {\raggedright\itshape}}
\renewcommand\subparagraph{%
    \@startsection{subparagraph}{5}{\z@}%
                  {\medskipamount}%
                  {-1em}%
                  {\raggedright\itshape}}

\def\section@numbersep{.}
\def\subsection@numbersep{}
\def\subsubsection@numbersep{}
\def\paragraph@numbersep{.}
\def\subparagraph@numbersep{.}
%%
%%  ======= APPENDIX =======
%%
\AtBeginDocument{\let\@default@section\section}
\renewcommand\appendix{%
    \par
    \def\section{\@ifnextchar*{\@appsectionstar}{\@appsectionnostar}}%
    \def\section@prefix{\appendixname\ }%
    \setcounter{section}{0}%
    \setcounter{subsection}{0}%
    %%  Sekcijos skaitliukas pakeiciamas globaliai:
    \renewcommand\theHsection{\Alph{section}}%
    \gdef\thesection{\@Alph\c@section}%
    }
\def\@appsectionstar*#1{%
    \@default@section*{#1}%
    \setcounter{section}{1}%
    }
\def\@appsectionnostar#1{%
    \ifx.#1.%
        \def\section@numbersep{}\@default@section[\appendixname\ \thesection]{}%
    \else
        \def\section@numbersep{.}\@default@section{#1}%
    \fi
    }
%%
%%  ======= TABLE OF CONTENTS =======
%%
%%  Improvement for article class
\renewcommand\tableofcontents{%
    \nocontentsline
    \contentsname@cmd
    \@starttoc{toc}%
    }
\def\nocontentsline{%
    \let\@@addcontentsline\addcontentsline
    \ifx\hyper@anchor\@undefined
        \def\addcontentsline##1##2##3{\let\addcontentsline\@@addcontentsline}%
    \else
        \def\addcontentsline##1##2##3##4{\let\addcontentsline\@@addcontentsline}%
    \fi
    }
\@ifundefined{contentsname@cmd}%
    {\def\contentsname@cmd{\section*{\contentsname}}}{}

\renewcommand*\l@section{\@dottedtocline{1}{\z@}{1.5em}}
%%
%%  ======= LIST ENVIRONMENTS =======
%%
\parsep\z@
\topsep\smallskipamount
\partopsep\z@
\itemsep\z@
\labelsep.5em

\def\@listI{\leftmargin\leftmargini
            \parsep\z@
            \topsep\smallskipamount
            \itemsep\z@}
\def\list@parindent{1pc}

\let\quotation@size\small
\def\quotation@itemindent{\list@parindent}
\def\quotation@parindent{\list@parindent}
\def\quotation@leftmargin{\list@parindent}
\let\quotation@rightmargin\z@
\let\quotation@topsep\smallskipamount

\def\quotation{%
    \list{}{\quotation@size
            \listparindent\quotation@parindent
            \itemindent   \quotation@itemindent
            \rightmargin\quotation@rightmargin   \leftmargin\quotation@leftmargin
            \partopsep\z@ \topsep\quotation@topsep \parsep\z@
            }%
    \item[\Q@strut]\relax
    }
\def\endquotation{\endlist}

\def\Q@strut{\leavevmode\hbox{\vrule height9\p@ depth1\p@ width0\p@}}

\let\quote@size\article@footnotesize
\def\quote@indent{\z@}
\def\quote@leftmargin{2pc}
\def\quote@rightmargin{2pc}
\let\quote@topsep\smallskipamount

\def\quote{%
    \list{}{\quote@size
            \listparindent\quote@indent
            \itemindent \listparindent
            \rightmargin\quote@rightmargin   \leftmargin\quote@leftmargin
            \partopsep\z@ \topsep\quote@topsep \parsep\z@
            }%
    \item\relax
    }
\def\endquote{\endlist}

%%  Ticket#114054 - IntlPress/ICCM: itemize /DG
\def\labelitemi{\ensuremath{\bullet}}
%%
%%  ======= FLOATS =======
%%
\long\def\@makecaption#1#2{%
    \vskip\abovecaptionskip
    \normalsize\itshape\centering
        #1.\enskip #2\par
    \vskip\belowcaptionskip
    }

\def\fnum@table{\tablename~\thetable}
\setlength\belowcaptionskip{4\p@}

\def\tablename@size{\scshape}
\def\tablename@skip{\endgraf}

\renewcommand\figurename{Figure}

\def\figurename@size{\scshape}
\def\figurename@skip{.~}

\def\@floatboxreset{%
    \reset@font
    \@setminipage
    \renewcommand{\baselinestretch}{}\large\normalsize
    \small
    \centering
    }
%%
%%  ======= MATH =======
%%
\PassOptionsToPackage{leqno}{amsmath}
\AtBeginDocument{\@ifpackageloaded{amsmath}{\allowdisplaybreaks}{}}
\if@section@eqno
   \AtBeginDocument{%
       \@ifpackageloaded{amsmath}
                        {\numberwithin{equation}{section}}
                        {\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}}%
       }
\fi
%%
%%  ======= THE BIBLIOGRAPHY =======
%%
\def\set@natbib{%
    \let\bibfont\thebibliography@size
    \setlength\bibsep{\z@}%
    }
\def\load@natbib@@{%
    \if@numbered@bibliography
        \PassOptionsToPackage{numbers,square}{natbib}%
    \fi
    \RequirePackage{natbib}%
    }

\@ifundefined{load@natbib}{\let\load@natbib\load@natbib@@}{}

\if@load@natbib@
    \load@natbib
\else
    \let\xxx@thebibliography\thebibliography
    \def\thebibliography{\thebibliography@size\xxx@thebibliography}%
    \g@addto@macro\@openbib@code{\itemsep\z@}%
\fi
\AtBeginDocument{\@ifpackageloaded{natbib}{\set@natbib}{}}%

%%
%%  ======= SMART \MR =======
%%
%%  Code suggested by Vilmos Prokaj <prokaj@cs.elte.hu>
%%  solves the problem when MR is in a format
%%  \MR{MR1037262 (91i:60148)}
%%
%%  Without MR this macro removes the MR prefix if it
%%  is present, unchanges the argument otherwise
\def\MRfixed{MR\woMR}
\def\woMR#1{\w@MR#1MR#1MR\relax}
\def\w@MR#1MR#2MR#3\relax{#2}

\let\MR\MRfixed

%%  This splits MR... (...)
\def\@MR#1 #2\relax#3{%
    \href{http://www.ams.org/mathscinet-getitem?mr=#1}{\MRfixed{#3}}%
    }
%%
%%  ======= REFERENCES =======
%%
\RequirePackage{hyperref}
\RequirePackage{xcolor}

\@ifundefined{ifwww}{\newif\ifwww\wwwtrue}{}
\ifwww
    %%  blue
    \definecolor{linkcolor}{rgb}{0 0 1}
    \hypersetup{%
        colorlinks=true,
        bookmarksopenlevel=1,
        bookmarksdepth=3,
        bookmarksopen,
        pdfborder={0 0 1},
        linkcolor=linkcolor,
        citecolor=linkcolor,
        urlcolor=linkcolor,
        hyperindex=false,
        breaklinks=true,
        linktocpage=true
        }
\else
    %%  black
    %%  Disabled 'draft', it does not ensure even layout in www/print modes.
    %%  Leaving link carcass, but the links aren't used - it ensures that layout does not change.
    \hypersetup{%
        colorlinks=false,
        pageanchor=false
        }
    \AtBeginDocument{%
        \Hy@colorlinksfalse
        \Hy@ocgcolorlinksfalse
        \Hy@frenchlinksfalse
        \def\Hy@colorlink#1{\begingroup}%
        \def\Hy@endcolorlink{\endgroup}%
        \def\@pdfborder{0 0 0}%
        \let\@pdfborderstyle\ltx@empty
        }
    \let\Hy@DestName\@gobbletwo
    \let\Hy@StartlinkName\@gobbletwo
    \let\WriteBookmarks\relax
    \let\ReadBookmarks\relax
    \def\pdfstartlink#1\relax{}
    \def\close@pdflink{%
        \Hy@endcolorlink
        \Hy@VerboseLinkStop
        }
    \def\pdfstartlink#1\relax{}
\fi

\AtBeginDocument{\local@hyperref@settings}
\def\local@hyperref@settings{%
    %%  Hooks for the \thanksref, \thankstext:
    \def\thanks@hypertarget##1{%
        \smash{\raise\baselineskip\hbox{\protect\hypertarget{##1}{}}}%
        }%
    %%  Put document info
    \def\write@pdfinfo##1##2{%
        \gdef##1{##2}%
        \protected@write\@auxout{\no@harm}{\string\gdef\string##1{##2}}%
        }%
    \@ifundefined{hy@title}{}{\pdfstringdef\@pdftitle{\hy@title}}%
    \@ifundefined{hy@author}{}{\pdfstringdef\@pdfauthor{\hy@author}}%
    \@ifundefined{hy@subject}{}{\pdfstringdef\@pdfsubject{\hy@subject}}%
    \@ifundefined{hy@keywords}{}{\pdfstringdef\@pdfkeywords{\hy@keywords}}%
    %%  MR with hyperef
    \def\MR##1{\@MR##1 \relax{##1}}%
    }
\def\write@pdfinfo#1#2{\gdef #1{#2}}
%%
%%  ======= INICIALIZATION =======
%%
\pagenumbering{arabic}
\frenchspacing

\newdimen\t@xtheight
\def\init@settings{%
    \splittopskip=\topskip \splitmaxdepth=\maxdepth
    \t@xtheight\textheight \advance\t@xtheight-\splittopskip
    }
\init@settings

\pagestyle{copyright}

\@ifundefined{AtEndAfterFileList}{}{\AtEndAfterFileList{}}

\normalsize

\endinput
%%
%% End of file `iccmpdfwf.cls'.
