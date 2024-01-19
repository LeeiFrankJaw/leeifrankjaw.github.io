\version "2.24.3"
\language "english"

\layout {
  indent = #0
  ragged-last = ##f
}

dottedps = #"
  .25 setlinewidth
  1 setlinecap
  [.02 .6] 0 setdash
  -10 0 moveto
  -5.25 8 4.75 8 9.5 0 curveto
  stroke
  "

dotted = \markup {
  \with-dimensions #'(-10 . 9.5) #'(5 . 8)
  \postscript #dottedps
}

dottedpstwo = #"
  .25 setlinewidth
  1 setlinecap
  [.02 .6] 0 setdash
  -7.5 0 moveto
  -3.25 6 4.75 6 9 0 curveto
  stroke
  "

dottedtwo = \markup {
  \with-dimensions #'(-7.5 . 9.5) #'(1.5 . 6)
  \postscript #dottedpstwo
}

dottedthree = \markup {
  \with-dimensions #'(-7.5 . 9.5) #'(1.75 . 6)
  \postscript #dottedpstwo
}

\relative {
  \omit Staff.TimeSignature
  \override NoteHead.extra-spacing-width = #'(-6.5 . 0)
  e''1
  ^\markup
  \override #'(baseline-skip . 1.75)
  \halign #0
  \center-column
  \teeny
  \string-lines
    "Prima
     o Cantino"
  ^\dotted
  \bar ".."
  b
  ^\markup
  \halign #-.3
  \teeny
  "Seconda"
  ^\dottedtwo
  \bar ".."
  g
  ^\markup
  \halign #-.4
  \teeny
  "Terza"
  ^\dottedtwo
  \bar ".."
  d
  ^\markup
  \halign #-.35
  \teeny
  "Quarta"
  ^\dottedthree
  \bar ".."
  a
  ^\markup
  \halign #-.3
  \teeny
  "Quinta"
  ^\dottedthree
  \bar ".."
  e
  ^\markup
  \halign #-.4
  \teeny
  "Sesta"
  ^\dottedtwo
  \bar "|."
}
