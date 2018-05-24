\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_res_zh}[2017/03/10 My custom Resume class (Chinese)]

\LoadClass{article}

\RequirePackage[margin=.75in]{geometry}
\RequirePackage{titlesec,amsmath,enumitem}
\setlength\parindent{0pt}

\RequirePackage{xeCJK} % Chinese
\setCJKmainfont{Songti SC}

% Redefine Section Title
\titleformat{\section} % Customize the \section command
	{\fontsize{12}{12}\raggedright\bf} % Make the \section headers large (\Large), % small capitals (\scshape) and left aligned (\raggedright)
	{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
	{}                           % Can be used to insert code before the heading
	[\titlerule]                 % Inserts a horizontal line after the heading

\titleformat{\subsection} % Customize the \subsection command
	{\fontsize{11}{11}\raggedright\bf}
	{}{0em}
	{}

\titleformat{\subsubsection} % Customize the \subsubsection command
	[runin]
	{\fontsize{10}{10}\raggedright\bf}
	{}{0em}
	{}
	[]

\titlespacing{\subsection} % Customize \subsection spacing
	{0pt}
	{1.5ex}
	{0.5ex}

\titlespacing{\subsubsection} % Customize \subsubsection spacing
	{0pt}
	{.75ex}
	{.5ex}

\newcommand{\datedsubsection}[2]{%
	\subsection[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsubsection}[2]{%
	\subsubsection[#1]{#1 \hfill #2}%
}

% Name
\newcommand{\name}[1]{
	\fontsize{20}{20}\bf{#1}
}

% Skills
\newcommand{\skills}[2]{
	\begin{itemize}[noitemsep,topsep=0pt]
		\item \textbf{#1：}#2
	\end{itemize}
}

% Experience
\newcommand{\experience}[7]{
	\subsection[#1]{#1 | \text{#2} \hfill #3}
	\flushleft{\textbf{#4}}
	\begin{itemize}[noitemsep,topsep=0pt]
		\item #5；
		\item #6；
		\item #7。
	\end{itemize}
}

% Awards
\newcommand{\awards}[2]{
	#1 \hfill \textbf{#2}\\
}

% Contact Info
\newcommand{\contact}[2]{
    \begin{tabular}[l]{p{8cm}}
		#1 \newline	#2
	\end{tabular}
}

% No page number
\pagenumbering{gobble}
