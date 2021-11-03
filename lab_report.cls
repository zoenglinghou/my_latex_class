\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lab_report}[2017/02/25 Custom Lab Report class]

\LoadClass{article}

% Packages
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[margin=0.25in]{caption}
\RequirePackage[margin=1.25in]{geometry}
\RequirePackage[style=nature]{biblatex}
\RequirePackage[toc,page,header]{appendix}
\RequirePackage{abstract}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{authblk}
\RequirePackage{booktabs}
\RequirePackage{fontspec}
\RequirePackage{gensymb}
\RequirePackage{graphicx}
\RequirePackage{lscape}
\RequirePackage{minted}
\RequirePackage{multicol}
\RequirePackage{multirow}
\RequirePackage{mwe}
% \RequirePackage{newtxmath}
\RequirePackage{pdfpages}
\RequirePackage{placeins}
\RequirePackage[separate-uncertainty=true]{siunitx}
\RequirePackage{subcaption}
\RequirePackage{systeme}

% Unicode Math
\expandafter\let\csname not=\endcsname\relax
\expandafter\let\csname not<\endcsname\relax
\expandafter\let\csname not>\endcsname\relax
\RequirePackage{unicode-math}


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
\setmonofont{Hack}[SizeFeatures={Size=8}]
\usemintedstyle{perldoc}

% Unit setup
\sisetup{load-configurations = abbreviations}

% Title Page Revamped
\renewcommand{\maketitle}[5][center]{
	% inputs: Title, Subtitle, Item 1 (name), Item 2 (UID)
	% options: center, flushleft, flushright
	\begin{titlepage}
		\begin{center}
			\par
			\vspace*{1.5in}
			{\scshape\Large #3 \par}
			\vspace{0.25in}
			{\scshape\huge #2 \par}
		\end{center}
		
		\vspace*{\fill}

		\begin{#1}
			{\Large #4 \par}
			{\Large #5 \par}
			\vspace{0.5in}
			{\large \today \par}
		\end{#1}

	\end{titlepage}

}

% Table
\setlength\extrarowheight{0.5em}

% Graphics Path
\graphicspath{{figures/}}

% Align math page break
\allowdisplaybreaks