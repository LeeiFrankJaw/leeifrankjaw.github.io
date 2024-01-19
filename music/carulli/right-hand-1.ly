\version "2.24.3"
\language "english"

\layout {
  ragged-last = ##f
}

\relative {
  c'8
  _\markup \halign #-.2 \teeny "Pollice"
  c'
  _\markup \halign #-.2 \teeny "Indice"
  e
  _\markup \halign #-.2 \teeny "Medio"
  c
  _\markup \halign #-.2 \teeny "Indice"
  g
  _\markup \halign #-.2 \teeny "Pollice"
  c
  _\markup \halign #-.2 \teeny "Indice"
  e
  _\markup \halign #-.2 \teeny "Medio"
  c
  _\markup \halign #-.2 \teeny "Indice"
  \bar ".."
  \time 6/8
  \omit Staff.TimeSignature
  g,
  _\markup \halign #-.2 \teeny "Indice"
  b
  _\markup \halign #-.2 \teeny "Medio"
  d
  _\markup \halign #-.2 \teeny "Indice"
  g,
  b
  d
  \bar "|."
}