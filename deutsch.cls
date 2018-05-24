\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{deutsch}[]

\LoadClass[12pt, letterpaper]{article}

% mla document
\RequirePackage{ifpdf}
\RequirePackage{mla}

% encoding
\RequirePackage{fontspec}

% German-specific commands
\RequirePackage[german]{babel}

% Hyphenation rules
\RequirePackage{hyphenat}
\hyphenation{Mathe-matik wieder-gewinnen}
