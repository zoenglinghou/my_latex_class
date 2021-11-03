\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover_letter}[2017/10/09 My custom Cover Letter class]

\LoadClass[a4paper]{letter}
\date{}

\RequirePackage[en-GB]{datetime2}
% \DTMsetstyle{dmyyyy}

\newcommand{\contact}[5]{
  \textbf{#1} \\ % Max Muster
  #2 \\ % Nelkenstrasse 231 
  #3 \\ % CH-8245 Feuerthalen
  Phone: #4 \\
  Email: #5
}

\newcommand{\companyaddress}[4]{
  #1 \\ % Management Consulting AG
  #2 \\ % Ms Felicitas Braun
  #3 \\ % Viktoriastrasse 15
  #4 % 3013 Bern
}

\newcommand{\placeanddate}[1] {
  #1, \today
}

\newcommand{\subject}[1] {
  \textbf{\large{#1}}
}

% \renewcommand{}
