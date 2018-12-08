\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mla_deutsch}[]

\LoadClass[12pt, letterpaper, ngerman]{article}

% mla document
\RequirePackage{ifpdf}
\RequirePackage{mla}

% Reviews
\RequirePackage{csquotes}
\RequirePackage[style=mla-new]{biblatex}
\RequirePackage[hidelinks]{hyperref}

% encoding
\RequirePackage{fontspec}
% \setmainfont[Ligatures = TeX]{TeX Gyre Pagella}
\newcommand\glqq{,,}
\newcommand\grqq{``}

% German support
\RequirePackage{hyphenat}
\hyphenation{Mathe-matik wieder-gewinnen}

% Chinese support
\RequirePackage{xeCJK}
\setCJKmainfont{Songti SC}
