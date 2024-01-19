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
  _\markup \lower #6 \halign #-.15  \tiny "Sesta Corda"
  g-3
  \bar ".."
  a-0
  b-2
  _\markup \lower #6 \halign #-.35  \tiny "Quinta"
  c-3
  \bar ".."
  d-0
  e-2
  _\markup \lower #6 \halign #-.35  \tiny "Quarta"
  f-3
  \bar ".."
  \partial 2
  g-0
  _\markup \lower #6 \halign #-1.35 \tiny "Terza"
  a-2
  \bar ".."
  b-0
  c-1
  _\markup \lower #6 \halign #-.35  \tiny "Seconda"
  d-3
  \bar ".."
  \partial 1
  e-0
  f-1
  _\markup \lower #6 \halign #-1.1  \tiny "Cantino"
  g-3
  a
  \tweak self-alignment-X #.4
  \textEndMark \markup \column {
    \halign #-1.1 \line { \finger "5" \fontsize #-2 "_Tasto" }
    \halign #-1.06 \line { \finger "4" \fontsize #-2 "_Ditto" }
  }
  \bar "|."
}
