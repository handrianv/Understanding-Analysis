\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oxmathproblems}[2026/11/07 Minimal personal problem-sheet class]

\LoadClass[12pt,a4paper]{exam}

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{enumitem}
\RequirePackage{setspace}
\RequirePackage[margin=1in]{geometry}

\onehalfspacing

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}

% Metadata
\newcommand{\UA@course}{}
\newcommand{\UA@sheettitle}{}

\newcommand{\course}[1]{%
  \renewcommand{\UA@course}{#1}%
}

\newcommand{\sheettitle}[1]{%
  \renewcommand{\UA@sheettitle}{#1}%
}

% Compatibility with old Oxford-template commands.
\newcommand{\oxfordterm}[1]{}
\newcommand{\sheetnumber}[1]{}
\newcommand{\contact}[1]{}

\pagestyle{plain}

% Header
\AtBeginDocument{%
  \begin{center}
    {\Large\bfseries \UA@course\par}
    \vspace{0.35em}
    {\large\bfseries \UA@sheettitle\par}
  \end{center}
  \vspace{0.8em}
}

% Question command used throughout the repo.
\newcommand{\miquestion}{\question}

% Remove "Solution:" while keeping solution boxes.
\renewcommand{\solutiontitle}{}

% Compatibility helper.
\newcommand{\sectionheader}[2][]{%
  \par\bigskip
  {\large\bfseries #2\par}
  \medskip
}