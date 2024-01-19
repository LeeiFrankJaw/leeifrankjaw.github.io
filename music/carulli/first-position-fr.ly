\version "2.24.3"
\language "english"

\layout {
  ragged-last = ##f
}

\relative {
  \time 3/4
  \omit Staff.TimeSignature
  e-0
  f-1
  _\markup \lower #6 \halign #-.15  \tiny "Sixième Corde."
  g-3
  \bar ".."
  a-0
  b-2
  _\markup \lower #6 \halign #-.35  \tiny "Cinquième."
  c-3
  \bar ".."
  d-0
  e-2
  _\markup \lower #6 \halign #-.35  \tiny "Quatrième."
  f-3
  \bar ".."
  \partial 2
  g-0
  _\markup \lower #6 \halign #-1 \tiny "Troisième."
  a-2
  \bar ".."
  b-0
  c-1
  _\markup \lower #6 \halign #-.35  \tiny "Seconde."
  d-3
  \bar ".."
  \partial 1
  e-0
  f-1
  _\markup \lower #6 \halign #-.6  \tiny "Chanterelle."
  g-3
  a
  \tweak self-alignment-X #.15
  \textEndMark \markup \column {
    \halign #-1.1 \line {
      \finger \concat { 5 \hspace #.2 \with-dimension #X #'(0 . 0) . \super e }
      \fontsize #-2 "Touche."
    }
    \halign #-1.06 \line {
      \finger \concat { 4 \hspace #.2 \with-dimension #X #'(0 . 0) . \super e }
      \fontsize #-2 "Doigt."
    }
  }
  \bar "|."
}
