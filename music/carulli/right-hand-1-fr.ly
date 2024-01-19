\version "2.24.3"
\language "english"

\layout {
  ragged-last = ##f
}

\relative {
  c'8
  _\markup \halign #-.2 \teeny "Pouce."
  c'
  _\markup \halign #-.2 \teeny "Index."
  e
  _\markup \halign #-.2 \teeny "Médium."
  c
  _\markup \halign #-.2 \teeny "Index."
  g
  _\markup \halign #-.2 \teeny "Pouce."
  c
  _\markup \halign #-.2 \teeny "Index."
  e
  _\markup \halign #-.2 \teeny "Médium."
  c
  _\markup \halign #-.2 \teeny "Index."
  \bar ".."
  \time 6/8
  \omit Staff.TimeSignature
  g,
  _\markup \halign #-.2 \teeny "Index."
  b
  _\markup \halign #-.2 \teeny "Médium."
  d
  _\markup \halign #-.2 \teeny "Index."
  g,
  b
  d
  \bar "|."
}