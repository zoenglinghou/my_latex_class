\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover_letter}[2017/10/09 My custom Cover Letter class]

\LoadClass{letter}

\RequirePackage[margin=1in]{geometry}

\topmargin=-2in % Moves the top of the document 1 inch above the default
% \textheight=8.5in % Total height of the text on the page before text goes on to the next page, this can be increased in a longer letter
% \oddsidemargin=-10pt % Position of the left margin, can be negative or positive if you want more or less room
% \textwidth=6.5in % Total width of the text, increase this if the left margin was decreased and vice-versa

\let\raggedleft\raggedright % Pushes the date (at the top) to the left, comment this line to have the date on the right

\newcommand{\contact}[2]{
    \begin{center}
    \Large{#1}\\
    \normalsize{#2}
    \vspace{-6pt}
    \rule{\linewidth}{0.4pt}
    \vspace{18pt}
    \end{center}
}

% \renewcommand{}
