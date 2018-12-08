\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mla_general}[]

\LoadClass[12pt, letterpaper]{article}

% mla document
\RequirePackage{ifpdf}
\RequirePackage{mla}

% Reviews
\RequirePackage{babel}
\RequirePackage{csquotes}
\RequirePackage[style=mla-new]{biblatex}
\RequirePackage[hidelinks]{hyperref}

% encoding
\RequirePackage{fontspec}

% German support
\RequirePackage{hyphenat}
\hyphenation{Mathe-matik wieder-gewinnen}

% Chinese support
\RequirePackage{xeCJK}
\setCJKmainfont{Songti SC}
