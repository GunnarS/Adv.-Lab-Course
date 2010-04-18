\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{protokoll_en}[2009/05/03 v0.2]

\LoadClass[a4paper,oneside]{scrartcl}

%\RequirePackage[a4paper,left=3cm,right=3cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage{amsmath, amsthm, amssymb, amsrefs}
\RequirePackage[ngerman]{babel}
\RequirePackage[latin1]{inputenc}
\RequirePackage{booktabs,multirow,xspace,gnuplot-lua-tikz}
\RequirePackage{makeidx, graphicx, tikz, units, calc, pgfplots, fancyhdr}
\RequirePackage{wrapfig, subfig, caption, booktabs, floatrow, listings}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern,luximono}
\pgfplotstableset{ 
    every head row/.style={before row=\toprule,after row=\midrule}, 
    every last row/.style={after row=\bottomrule}
} 

\pagestyle{fancy}

\fancyhf{}
\rhead{\scriptsize D. Wills, K. Salimkhani, M. Schmitz - Experiment \nummer: \versuch}
\rfoot{\thepage}
\renewcommand{\headrulewidth}{0.1pt}

\fancypagestyle{plain}{
    \fancyhf{}
    \renewcommand{\headrulewidth}{0pt}
}

\lstset{ %
language=C++,                   % choose the language of the code
basicstyle=\ttfamily\scriptsize,% the size of the fonts that are used for the code
fontadjust=false,      
numbers=left,                   % where to put the line-numbers
numberstyle=\tiny,              % the size of the fonts that are used for the line-numbers
numberfirstline=false,
firstnumber=1,
stepnumber=10,                  % the step between two line-numbers. 
                                % If it's 1 each line will be numbered
numbersep=5pt,                  % how far the line-numbers are from the code
backgroundcolor=\color{white},  % choose the background color. You must add 
                                % \usepackage{color}
showspaces=false,               % show spaces adding particular underscores
showstringspaces=false,         % underline spaces within strings
showtabs=false,                 % show tabs within strings adding particular underscores
frame=none,	                    % adds a frame around the code
tabsize=2,	                    % sets default tabsize to 2 spaces
captionpos=b,                   % sets the caption-position to bottom
breaklines=true,                % sets automatic line breaking
breakatwhitespace=false,        % sets if automatic breaks should only happen at whitespace
escapeinside={\%*}{*},          % if you want to add a comment within your code
keywordstyle=\bfseries\color{black},
commentstyle=\color{blue},
stringstyle=\color{red}
}


\setlength{\parindent}{0pt}
\setlength{\parskip}{8pt}


%%%% === Vektor fett darstellen ===
\let\oldvec\vec
\def\vec#1{{\boldsymbol{#1}}} %Fetter Vektor
%\newcommand{\ve}{\vec}

\usepgflibrary{plotmarks}

\author{Danielle Wills, Kian Salimkhani und Matthias Schmitz}

\newcommand{\origdoc}{}
\let\origdoc=\document
\let\endorigdoc=\enddocument

\renewenvironment{document}
{\begin{origdoc}
    \begin{titlepage}
        \title{\Large{Advanced Laboratory Course}\\
                \vspace{0.5cm}\textnormal{Winter Semester 09/10}\\
                \vspace{2cm}\large\textnormal{Report ad}\\
                \vspace{0.5cm}\Huge{\versuch}\vspace{1cm}
        }
        \author{Danielle Wills, Kian Salimkhani, Matthias Schmitz\\
                Group $\mathrm{P} 24$\\
                 \\\large\textnormal{Assistent: \assistent}
        }
        \date{\vspace{1cm} Bonn University \\ \today}
    \end{titlepage}
    \maketitle
    \newpage
    \tableofcontents
    \newpage
}
{
    \end{origdoc}
}

\newcommand{\Literatur}[1]
{
    \section{Literature}
        \begin{biblist}
            \bibselect*{#1}
        \end{biblist}
}

\DeclareMathSymbol{,}{\mathpunct}{letters}{"3B}
\DeclareMathSymbol{.}{\mathord}{letters}{"3B}
\DeclareMathSymbol{\decimal}{\mathord}{letters}{"3A}

\pgfkeys{/pgf/number format/.cd,
    fixed,
    precision=3,
    set thousands separator={}}

\makeindex

