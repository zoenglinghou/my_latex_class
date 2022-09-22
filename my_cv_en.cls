\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_res_en}[2018/03/06 My custom CV class (English)]

\LoadClass{article}

\RequirePackage[margin=2cm]{geometry}
\RequirePackage{titlesec,amsmath,enumitem}
\setlength\parindent{0pt}

% Redefine Section Title
\titleformat{\section} % Customize the \section command
	{\fontsize{12}{12}\scshape\raggedright\bf} % Make the \section headers large (\Large), % small capitals (\scshape) and left aligned (\raggedright)
	{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
	{}                           % Can be used to insert code before the heading

% \titleformat{\subsection} % Customize the \subsection command
% 	{\fontsize{11}{11}\scshape\raggedright\bf}
% 	{}{0em}
% 	{}
%
% \titleformat{\subsubsection} % Customize the \subsubsection command
% 	[runin]
% 	{\fontsize{10.5}{10.5}\scshape\raggedright\bf}
% 	{}{0em}
% 	{}
% 	[]

\titlespacing{\section} % Customize \subsection spacing
	{0em}
	{0em}
	{.75em}

% \titlespacing{\subsection} % Customize \subsection spacing
% 	{0pt}
% 	{2.25ex}
% 	{.75ex}
%
% \titlespacing{\subsubsection} % Customize \subsubsection spacing
% 	{0pt}
% 	{.5ex}
% 	{.5ex}

% \newcommand{\datedsubsection}[2]{
% 	\subsection[#1]{#1 \hfill #2}
% }
%
% \newcommand{\datedsubsubsection}[2]{
% 	\subsubsection[#1]{#1 \hfill #2}
% }

% Title
\renewcommand{\title}[4]{
    \begin{centering}
        {\Large \scshape Curriculum Vitae} \\[1em]
        \textbf{\large #1} \\
        #2 \\
        #3 \\
        #4 \\
    \end{centering}
}

% Skills
\newcommand{\skills}[2]{
	\begin{tabular*}{\textwidth}{l p{5.75in}}
		\textbf{#1:} & #2
	\end{tabular*}
}

% % Experience
% % 1. Organization Name
% % 2. Location
% \newcommand{\experience}[7]{
% 	\subsection[#1]{#1 | \text{#2} \hfill #3}
% 	\flushleft{\textbf{#4}}
% 	\begin{itemize}[noitemsep,topsep=0pt]
% 		\item #5;
% 		\item #6;
% 		\item #7.
% 	\end{itemize}
% }

% % Awards
% \newcommand{\awards}[2]{
% 	#1 \hfill \textbf{#2}\\
% }

\makeatletter

\newcommand{\leftheader}[1]{%

    \begin{tabular}{p{3cm}p{12.5cm}}
        #1
    \checknextarg
}

\newcommand{\checknextarg}{
    \@ifnextchar\bgroup{\gobblenextarg}{
        \end{tabular}
        \\[0.5em]
    }
}
\newcommand{\gobblenextarg}[1]{
    & #1 \\
    \@ifnextchar\bgroup{\gobblenextarg}{
        \end{tabular}
        \\[0.5em]
    }
}

\newcommand{\leftheaderns}[1]{

    \begin{tabular}{p{3cm}p{12.5cm}}
        #1
    \checknextargns
}

\newcommand{\checknextargns}{
    \@ifnextchar\bgroup{\gobblenextargns}{
        \end{tabular}
        \\[-1em]
    }
}
\newcommand{\gobblenextargns}[1]{
    & #1 \\
    \@ifnextchar\bgroup{\gobblenextargns}{
        \end{tabular}
        \\[-1em]
    }
}

\makeatother

% No page number
\pagenumbering{gobble}
