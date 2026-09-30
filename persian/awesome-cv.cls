% Identification
% Persian edition of the Awesome-CV class.
% Same modular architecture as english/awesome-cv.cls: the class only pulls in
% third-party packages and the awesome-cv/*.sty modules, all real configuration
% lives in the modules (colors, fonts, layout, styles, entries).
\ProvidesClass{awesome-cv}[2026/09/28 v2.0 Awesome Curriculum Vitae Class (Persian)]
\NeedsTeXFormat{LaTeX2e}

% Class options
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% 3rd party packages
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer efficiently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to strip chars from telephone number
\RequirePackage{xstring}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to manage fonts
\RequirePackage[quiet]{fontspec}
% To support LaTeX quoting style
\defaultfontfeatures{Ligatures=TeX}
% Needed to use icons from font-awesome
\RequirePackage{fontawesome5}
% Needed for the optional profile picture (\photo)
\RequirePackage{tikz}
% Needed for the 'fill overzoom image' key used to crop the photo to a circle
\RequirePackage{tikzfill}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage[hidelinks,unicode,pdfpagelabels=false]{hyperref}
\hypersetup{%
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}

% Solves issues Warning: File `cv.out' has changed
\RequirePackage{bookmark}

% Modules
\RequirePackage{awesome-cv/utils}
\RequirePackage{awesome-cv/colors}
\RequirePackage{awesome-cv/fonts}
\RequirePackage{awesome-cv/layout}
\RequirePackage{awesome-cv/contact}
\RequirePackage{awesome-cv/social}
\RequirePackage{awesome-cv/styles}
\RequirePackage{awesome-cv/header}
\RequirePackage{awesome-cv/footer}
\RequirePackage{awesome-cv/sections}
\RequirePackage{awesome-cv/entries}
