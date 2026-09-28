%%
%% This is file `istaustriathesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% istaustriathesis.dtx  (with options: `class')
%% 
%% This is a generated file.
%% Copyright (C) 2020-2024 by Thomas Auzinger <thomas@auzinger.name>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Thomas Auzinger.
%% 
%% This work consists of the files istaustriathesis.dtx and istaustriathesis.ins
%% and the derived file istaustriathesis.cls.
%% This work also consists of the file intro.tex.
%% 
%% istaustriathesis.dtx
%% Copyright (C) 2020-2024 by Thomas Auzinger <thomas@auzinger.name>
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{istaustriathesis}
    [2024/02/20 v1.6 ISTA thesis template]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{memoir}%
}%
\ProcessOptions\relax
\LoadClass[a4paper,12pt]{memoir}%
\chapterstyle{veelo}%
\RequirePackage[scaled]{helvet}%
\RequirePackage{lmodern}%
\RequirePackage{courier}%
\RequirePackage{textcomp}%
\RequirePackage[T1]{fontenc}%
\RequirePackage[english]{babel}%
\RequirePackage{datetime2,datetime2-calc}%
\RequirePackage{calc}%
\RequirePackage{etoolbox}%
\RequirePackage{todonotes}%
\RequirePackage{graphicx}%
\graphicspath{{graphics/}}%
\newcommand{\ifestrequal}[4]{%
  \begingroup
    \edef\vutinfth@tempa{{#1}}%
    \edef\vutinfth@tempb{{#2}}%
    \expandafter\expandafter\expandafter\ifstrequal
      \expandafter\vutinfth@tempa\vutinfth@tempb{#3}{#4}%
  \endgroup
}%
\setlrmarginsandblock{1in}{1in}{*}%
\setulmarginsandblock{1in}{1in}{*}%
\checkandfixthelayout
\newcommand{\istaustriathesis@Huge}{\Huge}%
\newcommand{\istaustriathesis@huge}{\huge}%
\newcommand{\istaustriathesis@LARGE}{\LARGE}%
\newcommand{\istaustriathesis@Large}{\Large}%
\newcommand{\istaustriathesis@large}{\large}%
\newcommand{\istaustriathesis@normalsize}{\normalsize}%
\newcommand{\istaustriathesis@small}{\small}%
\newcommand{\istaustriathesis@footnotesize}{\footnotesize}%
\newcommand{\istaustriathesis@scriptsize}{\scriptsize}%
\newcommand{\istaustriathesis@tiny}{\tiny}%
\newenvironment{SFFont}[1]{%
  \begingroup
    \sffamily
    \global\let\istaustriathesis@f@family@tmp=\f@family
  \endgroup
  \renewcommand{\sfdefault}{#1}%
  \ifdefstrequal{\f@family}{\istaustriathesis@f@family@tmp}{%
    \sffamily}{}%
}{%
  \renewcommand{\sfdefault}{\istaustriathesis@f@family@tmp}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \changes{v2.0}{2025/12/29}{Set footnotes, captions, tables, etc. to 8pt}
% Set various text elements to 8pt.
%    \begin{macrocode}
% \renewcommand{\foottextfont}{\istaustriathesis@eightpt}%
% \captiontitlefont{\istaustriathesis@eightpt}%
% \captionnamefont{\istaustriathesis@eightpt}%
% \AtBeginDocument{%
%   \AtBeginEnvironment{table}{\istaustriathesis@eightpt}%
%   \AtBeginEnvironment{figure}{\istaustriathesis@eightpt}%
%   \AtBeginEnvironment{tabular}{\istaustriathesis@eightpt}%
%   \@ifpackageloaded{subcaption}{%
%     \DeclareCaptionFont{eightpt}{\istaustriathesis@eightpt}%
%     \captionsetup{font=eightpt, labelfont=eightpt}%
%     \captionsetup[sub]{font=eightpt, labelfont=eightpt}%
%   }{}%
%   \@ifpackageloaded{algorithm2e}{%
%     \SetAlFnt{\istaustriathesis@eightpt}%
%     \SetAlCapFnt{\istaustriathesis@eightpt}%
%     \SetAlCapNameFnt{\istaustriathesis@eightpt}%
%   }{}%
% }%
%    \end{macrocode}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\setdate}[3]{%
  \DTMsavenoparsedate{istaustriathesis@date@signing}{#1}{#2}{#3}{-1}%
}%
\newcommand{\istaustriathesis@def@data}[2]{%
  \@namedef{istaustriathesis@data@#1@def}{}%
  \@namedef{istaustriathesis@data@#1}{#2}%
}%
\newcommand{\istaustriathesis@def@data@invalid}[2]{%
  \@namedef{istaustriathesis@data@#1@error}{%
    \ClassError{istaustriathesis}{No #2 issued}{Set #1 with #2.}%
  }%
  \@namedef{istaustriathesis@data@#1}{%
    \@nameuse{istaustriathesis@data@#1@error}}%
}%
\newcommand{\CreateData}[1]{%
  \@namedef{set#1}##1{%
    \istaustriathesis@def@data{#1}{##1}%
  }%
  \istaustriathesis@def@data@invalid{#1}{\string\set#1}%
}%
\newcommand{\istaustriathesis@def@person}[5]{%
  \@namedef{istaustriathesis@person@#1@def}{}%
  \@namedef{istaustriathesis@person@#1@pretitle}{#2}%
  \@namedef{istaustriathesis@person@#1@name}{#3}%
  \@namedef{istaustriathesis@person@#1@posttitle}{#4}%
  \@namedef{istaustriathesis@person@#1@affiliation}{#5}%
  \ifstrempty{#3}{%
    \ifstrempty{#2}{%
      \@namedef{istaustriathesis@person@#1@fullname}{#4}%
      \@namedef{istaustriathesis@person@#1@fullnameaffiliation}{%
        #4, #5}%
    }{%
      \ifstrempty{#4}{%
        \@namedef{istaustriathesis@person@#1@fullname}{#2}%
        \@namedef{istaustriathesis@person@#1@fullnameaffiliation}{%
          #2, #5}%
      }{%
        \@namedef{istaustriathesis@person@#1@fullname}{#2 #4}%
        \@namedef{istaustriathesis@person@#1@fullnameaffiliation}{%
          #2 #4, #5}%
      }%
    }%
  }{%
    \ifstrempty{#2}{%
      \ifstrempty{#4}{%
        \@namedef{istaustriathesis@person@#1@fullname}{#3}%
        \@namedef{istaustriathesis@person@#1@fullnameaffiliation}{%
          #3, #5}%
      }{%
        \@namedef{istaustriathesis@person@#1@fullname}{#3, #4}%
        \@namedef{istaustriathesis@person@#1@fullnameaffiliation}{%
          #3, #4, #5}%
      }%
    }{%
      \ifstrempty{#4}{%
        \@namedef{istaustriathesis@person@#1@fullname}{#2 #3}%
        \@namedef{istaustriathesis@person@#1@fullnameaffiliation}{%
          #2 #3, #5}%
      }{%
        \@namedef{istaustriathesis@person@#1@fullname}{#2 #3, #4}%
        \@namedef{istaustriathesis@person@#1@fullnameaffiliation}{%
          #2 #3, #4, #5}%
      }%
    }%
  }%
}%
\newcommand{\istaustriathesis@def@person@invalid}[2]{%
  \@namedef{istaustriathesis@person@#1@error}{%
    \ClassError{istaustriathesis}{No #2 issued}{Set #1 with #2.}%
  }%
  \@namedef{istaustriathesis@person@#1@name}{%
    \@nameuse{istaustriathesis@person@#1@error}}%
  \@namedef{istaustriathesis@person@#1@pretitle}{%
    \@nameuse{istaustriathesis@person@#1@error}}%
  \@namedef{istaustriathesis@person@#1@posttitle}{%
    \@nameuse{istaustriathesis@person@#1@error}}%
  \@namedef{istaustriathesis@person@#1@affiliation}{%
    \@nameuse{istaustriathesis@person@#1@error}}%
  \@namedef{istaustriathesis@person@#1@fullname}{%
    \@nameuse{istaustriathesis@person@#1@error}}%
  \@namedef{istaustriathesis@person@#1@fullnameaffiliation}{%
    \@nameuse{istaustriathesis@person@#1@error}}%
}%
\newcommand{\CreatePerson}[1]{%
  \@namedef{set#1}##1##2##3##4{%
    \istaustriathesis@def@person{#1}{##1}{##2}{##3}{##4}%
  }%
  \istaustriathesis@def@person@invalid{#1}{\string\set#1}%
}%
\newcommand{\istaustriathesis@thesis@type}{%
  \ClassError{istaustriathesis}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\istaustriathesis@degreename}{%
  \ClassError{istaustriathesis}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\istaustriathesis@thesisname}{%
  \ClassError{istaustriathesis}{No \string\setthesis \space issued}{%
    Set thesis type with \string\setthesis.}%
}%
\newcommand{\istaustriathesis@thesis@master}{master}%
\newcommand{\istaustriathesis@thesis@phd}{phd}%
\newcommand{\ifmaster}[1]{%
  \ifestrequal{\istaustriathesis@thesis@type}{%
    \istaustriathesis@thesis@master
  }{#1}{}%
}%
\newcommand{\ifphd}[1]{%
  \ifestrequal{\istaustriathesis@thesis@type}{%
    \istaustriathesis@thesis@phd
  }{#1}{}%
}%
\newcommand{\setthesis}[1]{%
  \ifdefstring{\istaustriathesis@thesis@master}{#1}{%
    \renewcommand{\istaustriathesis@thesis@type}{%
      \istaustriathesis@thesis@master}%
    \renewcommand{\istaustriathesis@degreename}{%
      Master of Science}%
    \renewcommand{\istaustriathesis@thesisname}{%
      Master's Thesis}%
  }{}%
  \ifdefstring{\istaustriathesis@thesis@phd}{#1}{%
    \renewcommand{\istaustriathesis@thesis@type}{%
      \istaustriathesis@thesis@phd}%
    \renewcommand{\istaustriathesis@degreename}{%
      Doctor of Philosophy}%
    \renewcommand{\istaustriathesis@thesisname}{%
      Thesis}%
  }{}%
}%
\CreateData{title}%
\CreateData{subtitle}%
\CreateData{issn}%
\CreateData{isbn}%
\CreatePerson{author}%
\CreatePerson{supervisor}%
\CreatePerson{cosupervisor}%
\CreatePerson{committeememberI}%
\CreatePerson{committeememberII}%
\CreatePerson{committeememberIII}%
\CreatePerson{committeememberIIII}%
\CreatePerson{defensechair}%
\newcommand{\istaustriathesis@by}{by}%
\newcommand{\istaustriathesis@submission}{%
\emph{A thesis submitted to the\\Graduate School\\of the\\
Institute of Science and Technology Austria\\
in partial fulfillment of the requirements\\
for the degree of\\\istaustriathesis@degreename}}%
\newcommand{\istaustriathesis@committee}{Committee in charge:}%
\newcommand{\istaustriathesis@onfile}{Signed page is on file}%
\newcommand{\istaustriathesis@license@choose}{choose}%
\newcommand{\istaustriathesis@license@restricted}{restricted}%
\newcommand{\istaustriathesis@license@ccby}{cc-by}%
\newcommand{\istaustriathesis@license@ccbysa}{cc-by-sa}%
\newcommand{\istaustriathesis@license@ccbynd}{cc-by-nd}%
\newcommand{\istaustriathesis@license@ccbync}{cc-by-nc}%
\newcommand{\istaustriathesis@license@ccbyncsa}{cc-by-nc-sa}%
\newcommand{\istaustriathesis@license@ccbyncnd}{cc-by-nc-nd}%
\newcommand{\istaustriathesis@choose}{\todo[inline]{Choose a license (i.e., `All Rights Reserved' or a Creative Commons license).}}%
\newcommand{\istaustriathesis@restricted}{All Rights Reserved}%
\newcommand{\istaustriathesis@ccby}{%
CC BY 4.0 The copyright of this thesis rests with the author. %
Unless otherwise indicated, its contents are licensed under a %
\href{https://creativecommons.org/licenses/by/4.0/}{%
Creative Commons Attribution 4.0 International License}. %
Under this license, you may copy and redistribute the material %
in any medium or format. You may also create and distribute modified %
versions of the work. This is on the condition that: you credit the %
author.}%
\newcommand{\istaustriathesis@ccbysa}{%
CC BY-SA 4.0 The copyright of this thesis rests with the author. %
Unless otherwise indicated, its contents are licensed under a %
\href{https://creativecommons.org/licenses/by-sa/4.0/}{%
Creative Commons Attribution-ShareAlike 4.0 International}. %
Under this license, you may copy and redistribute the material %
in any medium or format for both commercial and non-commercial %
purposes. You may also create and distribute modified versions %
of the work. This on the condition that: you credit the author %
and share any derivative works under the same license.}%
\newcommand{\istaustriathesis@ccbynd}{%
CC BY-ND 4.0 The copyright of this thesis rests with the author. %
Unless otherwise indicated, its contents are licensed under a %
\href{https://creativecommons.org/licenses/by-nd/4.0/}{%
Creative Commons Attribution-NoDerivatives 4.0 International License}. %
Under this licence, you may copy and redistribute the material %
in any medium or format for both commercial and non-commercial %
purposes. This on the condition that: you credit the author and %
do not distribute modified versions of the work.}%
\newcommand{\istaustriathesis@ccbync}{%
CC BY-NC 4.0 The copyright of this thesis rests with the author. %
Unless otherwise indicated, its contents are licensed under a %
\href{https://creativecommons.org/licenses/by-nc/4.0/}{%
Creative Commons Attribution-NonCommercial 4.0 International License}. %
Under this license, you may copy and redistribute the material %
in any medium or format. You may also create and distribute %
modified versions of the work. This is on the condition that: %
you credit the author and do not use it, or any derivative %
works, for a commercial purpose.}%
\newcommand{\istaustriathesis@ccbyncsa}{%
CC BY-NC-SA 4.0 The copyright of this thesis rests with the author. %
Unless otherwise indicated, its contents are licensed under a %
\href{https://creativecommons.org/licenses/by-nc-sa/4.0/}{%
Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License}. %
Under this license, you may copy and redistribute the material %
in any medium or format. You may also create and distribute %
modified versions of the work. This is on the condition that: %
you credit the author, do not use it for commercial purposes %
and share any derivative works under the same license.}%
\newcommand{\istaustriathesis@ccbyncnd}{%
CC BY-NC-ND 4.0 The copyright of this thesis rests with the author. %
Unless otherwise indicated, its contents are licensed under a %
\href{https://creativecommons.org/licenses/by-nc-nd/4.0/}{%
Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License}. %
Under this license, you may copy and redistribute the material %
in any medium or format. This is on the condition that: you %
credit the author, do not use it for commercial purposes and do %
not distribute modified versions of the work.}%
\newcommand{\istaustriathesis@license}{
  \ClassError{istaustriathesis}{No license chosen}{Set license type with \string\setlicense.}%
}%
\newcommand{\setlicense}[1]{
  \ifdefstring{\istaustriathesis@license@choose}{#1}{%
    \renewcommand{\istaustriathesis@license}{%
      \istaustriathesis@choose}%
  }{}%
  \ifdefstring{\istaustriathesis@license@restricted}{#1}{%
    \renewcommand{\istaustriathesis@license}{%
      \istaustriathesis@restricted}%
  }{}%
  \ifdefstring{\istaustriathesis@license@ccby}{#1}{%
    \renewcommand{\istaustriathesis@license}{%
      \istaustriathesis@ccby}%
  }{}%
  \ifdefstring{\istaustriathesis@license@ccbysa}{#1}{%
    \renewcommand{\istaustriathesis@license}{%
      \istaustriathesis@ccbysa}%
  }{}%
  \ifdefstring{\istaustriathesis@license@ccbynd}{#1}{%
    \renewcommand{\istaustriathesis@license}{%
      \istaustriathesis@ccbynd}%
  }{}%
  \ifdefstring{\istaustriathesis@license@ccbync}{#1}{%
    \renewcommand{\istaustriathesis@license}{%
      \istaustriathesis@ccbync}%
  }{}%
  \ifdefstring{\istaustriathesis@license@ccbyncsa}{#1}{%
    \renewcommand{\istaustriathesis@license}{%
      \istaustriathesis@ccbyncsa}%
  }{}%
  \ifdefstring{\istaustriathesis@license@ccbyncnd}{#1}{%
    \renewcommand{\istaustriathesis@license}{%
      \istaustriathesis@ccbyncnd}%
  }{}%
}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\newsetlength}[2]{%
  \newlength{#1}%
  \setlength{#1}{#2}%
}%
\newsetlength{\istaustriathesis@skipamount}{1ex}%
\newsetlength{\istaustriathesis@medskipamount}{3ex}%
\newsetlength{\istaustriathesis@bigskipamount}{6ex}%
\newcommand{\istaustriathesis@skip}{%
  \vspace*{\istaustriathesis@skipamount}}%
\newcommand{\istaustriathesis@medskip}{%
  \vspace*{\istaustriathesis@medskipamount}}%
\newcommand{\istaustriathesis@bigskip}{%
  \vspace*{\istaustriathesis@bigskipamount}}%
\copypagestyle{istaustriathesis@pagestyle@titlepage}{empty}%
\newcommand{\CommitteeSummaryBlock}{%
  \istaustriathesis@committee
  \istaustriathesis@skip
  \ifmaster{%
    \\\istaustriathesis@person@supervisor@name, Supervisor
    \ifdef{\istaustriathesis@person@cosupervisor@def}{%
      \\\istaustriathesis@person@cosupervisor@name
    }{}%
    \\\istaustriathesis@person@committeememberI@name
    \ifdef{\istaustriathesis@person@committeememberII@def}{%
      \\\istaustriathesis@person@committeememberII@name
    }{}%
    \ifdef{\istaustriathesis@person@committeememberIII@def}{%
      \\\istaustriathesis@person@committeememberIII@name
    }{}%
    \ifdef{\istaustriathesis@person@committeememberIIII@def}{%
      \\\istaustriathesis@person@committeememberIIII@name
    }{}%
  }%
  \ifphd{%
    \\\istaustriathesis@person@defensechair@name, Chair
    \\\istaustriathesis@person@supervisor@name
    \ifdef{\istaustriathesis@person@cosupervisor@def}{%
      \\\istaustriathesis@person@cosupervisor@name
    }{}%
    \\\istaustriathesis@person@committeememberI@name
    \\\istaustriathesis@person@committeememberII@name
    \ifdef{\istaustriathesis@person@committeememberIII@def}{%
      \\\istaustriathesis@person@committeememberIII@name
    }{}%
    \ifdef{\istaustriathesis@person@committeememberIIII@def}{%
      \\\istaustriathesis@person@committeememberIIII@name
    }{}%
  }%
}%
\newcommand{\istaustriathesis@graphics@logo}{%
  \includegraphics[width=5cm]{ISTA_black_vector.pdf}}%
\newcommand{\AddTitlePage}{%
  \thispagestyle{istaustriathesis@pagestyle@titlepage}%
  \begingroup\centering
  \null\vfill
  {\istaustriathesis@Huge\bfseries\istaustriathesis@data@title\par}
  {\istaustriathesis@LARGE\bfseries
    \ifdef{\istaustriathesis@data@subtitle}{%
      \istaustriathesis@data@subtitle}{%
    }%
  \par}
  \istaustriathesis@skip
  {\istaustriathesis@large\istaustriathesis@by\par}
  \istaustriathesis@skip
  {\istaustriathesis@Large
    \bfseries\istaustriathesis@person@author@fullname\par}
  \istaustriathesis@skip
  {\istaustriathesis@large
    \DTMmonthname{\DTMfetchmonth{istaustriathesis@date@signing}}, %
    \DTMfetchyear{istaustriathesis@date@signing}%
  \par}
  \vfill
  {\istaustriathesis@large\istaustriathesis@submission\par}
  \istaustriathesis@bigskip
  {\istaustriathesis@large\CommitteeSummaryBlock\par}
  \istaustriathesis@bigskip
  \istaustriathesis@graphics@logo\par
  \endgroup
  \cleardoublepage
}%
\copypagestyle{istaustriathesis@pagestyle@committeepage}{empty}%
\newcommand{\ApprovalBlock}{%
  The thesis of \istaustriathesis@person@author@name, %
  titled \emph{\istaustriathesis@data@title}, is approved by:%
}%
\newcommand{\SignatureBlock}[2]{%
    {\bfseries #1}: #2\par
  \begingroup\centering
    \istaustriathesis@bigskip
    Signature: \rule{8cm}{0.4pt}\par
  \endgroup
}%
\newcommand{\CommitteeBlock}{%
  \ifmaster{%
    \SignatureBlock{Supervisor}{%
      \istaustriathesis@person@supervisor@fullnameaffiliation}\par
    \istaustriathesis@medskip
    \ifdef{\istaustriathesis@person@cosupervisor@def}{%
      \SignatureBlock{Co-supervisor}{%
        \istaustriathesis@person@cosupervisor@fullnameaffiliation}\par
      \istaustriathesis@medskip
    }{}%
    \SignatureBlock{Committee Member}{%
      \istaustriathesis@person@committeememberI@fullnameaffiliation}\par
    \istaustriathesis@medskip
    \ifdef{\istaustriathesis@person@committeememberII@def}{%
      \SignatureBlock{Committee Member}{%
        \istaustriathesis@person@committeememberII@fullnameaffiliation}\par
      \istaustriathesis@medskip
    }{}%
    \ifdef{\istaustriathesis@person@committeememberIII@def}{%
      \SignatureBlock{Committee Member}{%
        \istaustriathesis@person@committeememberIII@fullnameaffiliation}\par
      \istaustriathesis@medskip
    }{}%
    \ifdef{\istaustriathesis@person@committeememberIIII@def}{%
      \SignatureBlock{Committee Member}{%
        \istaustriathesis@person@committeememberIIII@fullnameaffiliation}\par
      \istaustriathesis@medskip
    }{}%
  }%
  \ifphd{%
    \SignatureBlock{Supervisor}{%
      \istaustriathesis@person@supervisor@fullnameaffiliation}\par
    % \istaustriathesis@medskip
    \vfill
    \ifdef{\istaustriathesis@person@cosupervisor@def}{%
      \SignatureBlock{Co-supervisor}{%
        \istaustriathesis@person@cosupervisor@fullnameaffiliation}\par
      % \istaustriathesis@medskip
      \vfill
    }{}%
    \SignatureBlock{Committee Member}{%
      \istaustriathesis@person@committeememberI@fullnameaffiliation}\par
    % \istaustriathesis@medskip
    \vfill
    \SignatureBlock{Committee Member}{%
      \istaustriathesis@person@committeememberII@fullnameaffiliation}\par
    % \istaustriathesis@medskip
    \vfill
    \ifdef{\istaustriathesis@person@committeememberIII@def}{%
      \SignatureBlock{Committee Member}{%
        \istaustriathesis@person@committeememberIII@fullnameaffiliation}\par
      % \istaustriathesis@medskip
      \vfill
    }{}%
    \ifdef{\istaustriathesis@person@committeememberIIII@def}{%
      \SignatureBlock{Committee Member}{%
        \istaustriathesis@person@committeememberIIII@fullnameaffiliation}\par
      % \istaustriathesis@medskip
      \vfill
    }{}%
    \SignatureBlock{Defense Chair}{%
      \istaustriathesis@person@defensechair@fullnameaffiliation}\par
  }%
}%
\newcommand{\AddCommitteePage}{%
  \thispagestyle{istaustriathesis@pagestyle@committeepage}%
  \ApprovalBlock\par
  \vfill
  \CommitteeBlock\par
  \istaustriathesis@medskip
  \begingroup\centering
  {\istaustriathesis@small\istaustriathesis@onfile\par}
  \endgroup
  \cleardoublepage
}%
\copypagestyle{istaustriathesis@pagestyle@statementpage}{empty}%
\newcommand{\CopyrightBlock}{%
  \begingroup\centering
  \textcopyright\ by \istaustriathesis@person@author@name, %
  \DTMmonthname{\DTMfetchmonth{istaustriathesis@date@signing}}, %
  \DTMfetchyear{istaustriathesis@date@signing}\\
  \endgroup
  \begingroup
    \setlength{\parindent}{0pt}%
    \setlength{\leftskip}{0pt plus 0.5fil}%
    \setlength{\rightskip}{0pt plus -0.5fil}%
    \istaustriathesis@license%
    \par
  \endgroup
}%
\newcommand{\ISSNBlock}{%
  ISTA \istaustriathesis@thesisname%
  \ifdef{\istaustriathesis@data@issn@def}{%
    , ISSN: \istaustriathesis@data@issn
  }{}\par
}%
\newcommand{\ISBNBlock}{%
  \ifdef{\istaustriathesis@data@isbn@def}{%
    \istaustriathesis@medskip
    ISBN: \istaustriathesis@data@isbn\par
  }{}%
}%
\newcommand{\StatementBlock}{%
  \noindent I hereby declare that this thesis is my own work and that %
  it does not contain other people's work without this being so %
  stated; this thesis does not contain my previous work without this %
  being stated, and the bibliography contains all the literature that %
  I used in writing the dissertation.\par
  \istaustriathesis@medskip
  \noindent I accept full responsibility for the content and factual %
  accuracy of this work, including the data and their analysis and %
  presentation, and the text and citation of other work.\par
  \istaustriathesis@medskip
  \noindent I declare that this is a true copy of my thesis, including %
  any final revisions, as approved by my thesis committee, and that %
  this thesis has not been submitted for a higher degree to any other %
  university or institution.\par
  \istaustriathesis@medskip
  \noindent I certify that any republication of materials presented in %
  this thesis has been approved by the relevant publishers and %
  co-authors.%
}%
\newcommand{\AddStatementPage}{%
  \thispagestyle{istaustriathesis@pagestyle@statementpage}%
  \CopyrightBlock\par
  \istaustriathesis@bigskip
  \begingroup\centering
  \ISSNBlock
  \ifphd{%
    \ISBNBlock
  }%
  \endgroup
  \istaustriathesis@bigskip
  \StatementBlock\par
  \istaustriathesis@bigskip
  \begingroup\centering
  Signature: \rule{6cm}{0.4pt}\par
  \istaustriathesis@skip
  \istaustriathesis@person@author@name\\
  \DTMmonthname{\DTMfetchmonth{istaustriathesis@date@signing}}, %
  \DTMfetchyear{istaustriathesis@date@signing}\par
  \vfill
  {\istaustriathesis@small\istaustriathesis@onfile\par}
  \endgroup
  \cleardoublepage
}%
\newcommand{\addtitlepage}{%
  \AddTitlePage}%
\newcommand{\addcommitteepage}{%
  \AddCommitteePage}%
\newcommand{\addstatementpage}{%
  \AddStatementPage}%
\renewenvironment{abstract}{%
  \chapter{Abstract}%
}{}%
\newenvironment{acknowledgements}{%
  \openany% Start on next page
  \chapter{Acknowledgements}%
}{%
  \openright% Reactivate standard behavior
}%
\newenvironment{aboutauthor}{%
  \openany% Start on next page
  \chapter{About the Author}%
}{%
  \openright% Reactivate standard behavior
}%
\newenvironment{publicationlist}{%
  \openany% Start on next page
  \chapter{List of Collaborators and Publications}%
}{%
  \openright% Reactivate standard behavior
}%
\newenvironment{ethicalstatement}{%
  \openany% Start on next page
  \chapter{Ethical Aspects Statement}%
}{%
  \openright% Reactivate standard behavior
}%
\endinput
%%
%% End of file `istaustriathesis.cls'.
