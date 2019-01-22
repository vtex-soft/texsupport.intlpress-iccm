# LaTeX author support for the International Press journal *Notices of the International Congress of Chinese Mathematicians* (*ICCM Notices*)

## Table of Contents

* [About](#about)
* [Package content](#package-content)
* [Setup](#setup)
* [Recomended usage of `iccmpdfwf` package](#recomended-usage-of-iccmpdfwf-package)
* [Submission](#submission)
* [Bug reports](#bug-reports)

## About

Author support service provides LaTeX style files and `*.tex` file templates designed for International Press journal
[Notices of the International Congress of Chinese Mathematicians (ICCM Notices)](http://www.intlpress.com/ICCM/) articles.

## Package content

The following files are given in the repository (or directly in `*.zip` archive):

* `iccmpdfwf.cls` - LaTeX style files designed for International Press *ICCM Notices* journal articles.
  Please do not change them. These files are already loaded in the respective template files;
* `iccm-template.tex` - topmatter template (should be used for article preparation);
* `iccm-sample.tex` - journal sample article;
* `iccm-sample.pdf` - journal sample article (`PDF` file);

## Setup
* Clone the repository or download the `*.zip` archive. Rename the package to `<your-project-name>`.
* Install `iccmpdfwf.cls` in your TeX system (suggested directory: `ipart`).
* Use the file `amsa-template.tex` to start your article as a template.
* Use the file `amsa-sample.tex` as a reference for how to prepare a topmatter of your article.

## Recommended usage of `iccmpdfwf` package

Use `iccm-template.tex` as a template.

### Dependencies

In case *Chinese* symbols are used in the manuscript:
* `fontspec.sty` package should be used:
    ```latex
    \usepackage{fontspec}
    \setmainfont[
        Extension=.otf,
        UprightFont=*-regular,
        BoldFont=*-bold,
        ItalicFont=*-italic,
        BoldItalicFont=*-bolditalic,
        ]{texgyrepagella}

    ```
* [`Fandol`](https://ctan.org/tex-archive/fonts/fandol) (or some other) fonts 
  for Chinese typesetting should be installed in TeX system and used in the following way:
    ```latex
    \newfontfamily\textzhfamily{FandolHei-Regular.otf}
    \def\textzh#1{{\textzhfamily #1}}
    \textzh{林振峰}
    ```
* `luatex` engine should be used to produce `PDF` file.

### Document class options

For bibliography references output and citations a `natbib` package
is loaded by default with the following options:
```latex
\usepackage[numbers,square]{natbib}
```
It provides numbered citations.

In case author-year citation is required, provide the `authoryear` option:
```latex
\documentclass[authoryear]{ipart}
```
All `natbib` package options can be provided in this way.

In case some other bibliography package is used
which is not compatible with `natbib` package,
one can disable the latter with the option `nonatbib`:
```latex
\documentclass[nonatbib]{ipart}
```

### LaTeX document preamble content

The preamble of your LaTeX document should look like this:

```latex
\documentclass{iccmpdfwf}

\begin{document}

    \begin{frontmatter}

        \title{A Sample Document%
               \protect\thanks{Footnote to the title with the `thankstext' command.}}
        \runtitle{A Sample Document}

        \author{by First Author}%
        \thanks{Department, University of the First Author, Country
                \hfill\break E-mail: e-mail1@mail.com},
        \author{Second Author}%
        \thanks{Department, University of the Second Author, Country
                \hfill\break E-mail: e-mail2@mail.com},
        and
        \author{Third Author}%
        \thanks{Department, University of the Third Author, Country
                \hfill\break E-mail: e-mail3@mail.com}

        \runauthor{F. Author et al.}

        \begin{abstract}
            ...
        \end{abstract}

    \end{frontmatter}

    Your publication content

\end{document}
```

## Submission

Submit one single file as a `ZIP` archive.
Pack your root folder `<your-project-name>` with files and subfolders.

## Bug reports

Please submit bug report or feature requests at
[github](https://github.com/vtex-soft/texsupport.intlpress-iccm/issues) page.