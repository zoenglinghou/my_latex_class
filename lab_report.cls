\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lab_report}[2017/02/25 Custom Lab Report class]

\LoadClass{article}

% Packages
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[margin=0.25in]{caption}
\RequirePackage[margin=1in]{geometry}
\RequirePackage[toc,page,header]{appendix}
\RequirePackage{abstract}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{authblk}
\RequirePackage{booktabs}
\RequirePackage{fontspec}
\RequirePackage{gensymb}
\RequirePackage{graphicx}
\RequirePackage{minted}
\RequirePackage{multirow}
\RequirePackage{mwe}
\RequirePackage{newtxmath}
\RequirePackage{pdfpages}
\RequirePackage{placeins}
\RequirePackage{siunitx}
\RequirePackage{systeme}

% tikz
\RequirePackage{pgfplots}
\pgfplotsset{compat=newest}
\usetikzlibrary{plotmarks}
\usetikzlibrary{arrows.meta}
\usepgfplotslibrary{patchplots}

% Equation Numbering
\newcommand{\numberthis}{\addtocounter{equation}{1}\tag{\theequation}}

% Section Numbering
% \renewcommand{\thesection}{\arabic{section}}

% Code display settings
% \setmonofont{Hack}[SizeFeatures={Size=10}]
\usemintedstyle{perldoc}

% Unit setup
\sisetup{load-configurations = abbreviations}

% Title Page Revamped
\renewcommand{\maketitle}[4]{

	\begin{titlepage}
		\centering\par
		\vspace*{1.5in}
		{\scshape\Large #2 \par}
		\vspace{0.25in} % Subtitle
		{\scshape\huge\textbf #1 \par} % Title
		\vspace{4in}
		{\Large #3 \par} % Name
		{\Large #4 \par} % UID
		\vspace{0.5in}
		{\large \today \par} % Date
	\end{titlepage}

}

% Table
\setlength\extrarowheight{0.5em}

% Graphics Path
\graphicspath{{figures/}}

% Bibliography
\bibliographystyle{naturemag}
