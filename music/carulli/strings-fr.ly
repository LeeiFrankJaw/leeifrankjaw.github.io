\version "2.24.3"
\language "english"

\layout {
  indent = #0
  ragged-last = ##f
}

\relative {
  \omit Staff.TimeSignature
  \override NoteHead.extra-spacing-width = #'(-6.5 . 0)
  e''1
  ^\markup
  \override #'(baseline-skip . 1.75)
  \halign #-.2
  \center-column
  \teeny
  \string-lines
    "Première ou 
     Chanterelle."
  \bar ".."
  b
  ^\markup
  \halign #-.3
  \teeny
  "Seconde."
  \bar ".."
  g
  ^\markup
  \halign #-.4
  \teeny
  "Troisième."
  \bar ".."
  d
  ^\markup
  \halign #-.35
  \teeny
  "Quatrième."
  \bar ".."
  a
  ^\markup
  \halign #-.3
  \teeny
  "Cinquième."
  \bar ".."
  e
  ^\markup
  \halign #-.4
  \teeny
  "Sixième."
  \bar "|."
}
