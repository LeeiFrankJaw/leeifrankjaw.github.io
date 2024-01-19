\version "2.24.3"
\language "english"

tieoneps = #"
  2.9 .25 moveto
  .7 -.5 .7 -2 0 -2.5 rcurveto
  stroke
  "

tietwops = #"
  3 .25 moveto
  .8 -.75 .8 -2.85 0 -3.6 rcurveto
  stroke
  "

tiethreeps = #"
  2.9 -2.75 moveto
  .7 -.5 .7 -2 0 -2.5 rcurveto
  stroke
  "

tiefourps = #"
  3 .25 moveto
  1 -1.3 1 -5.5 0 -6.8 rcurveto
  stroke
  "

tiefiveps = #"
  3 .25 moveto
  1 -1.5 1 -6.8 0 -8.3 rcurveto
  stroke
  "

dottedps = #"
  .25 setlinewidth
  1 setlinecap
  [.02 .6] 0 setdash
  -14.5 0 moveto
  -10 10 11.84 10 16.5 -.35 curveto
  stroke
  "

dottedtwops = #"
  .25 setlinewidth
  1 setlinecap
  [.02 .6] 0 setdash
  -4.5 0 moveto
  0.25 8 13.25 8 18 0 curveto
  stroke
  "

\relative {
  \time 3/4
  \omit Staff.TimeSignature
  \accidentalStyle forget
  \set fingeringOrientations = #'(right)
  \stemUp
  \override NoteHead.extra-spacing-width = #'(0 . 6)
  <f'-3 a-2 c-1 f-1>
  ^\markup \postscript #tieoneps
  <f-3 af-1 c-1 f-1>
  ^\markup \halign #-.2 \teeny "Piccolo Accordo"
  ^\markup \postscript #tietwops
  ^\markup {
    \with-dimensions #'(-14.5 . 16.5) #'(10 . 10)
    \postscript #dottedps
  }
  \override NoteHead.extra-spacing-width = #'(0 . 5)
  <a, e'-1 a-1 cs-2 e>
  ^\markup \postscript #tiethreeps
  \bar ".."
  \override NoteHead.extra-spacing-width = #'(-4 . 5)
  <bf-1 f'-2 bf-3 df-1 f-1>
  ^\markup \halign #-1.22 \teeny "Grand Accordo"
  ^\markup \postscript #tiefourps
  ^\markup {
    \with-dimensions #'(-4.5 . 18) #'(8 . 8)
    \postscript #dottedtwops
  }
  <f-1 c'-3 f-4 a-2 c-1 f-1>
  ^\markup \postscript #tiefiveps
  \bar "|."
}