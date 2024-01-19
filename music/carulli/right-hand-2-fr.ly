\version "2.24.3"
\language "english"

\layout {
  ragged-last = ##f
}

\new Staff \with {
  \consists Merge_rests_engraver
}
<<
  \override Staff.Rest.style = #'classical
  \relative {
    \partial 2
    c''8
    ^\markup \halign #-.2 \teeny "Index."
     b a g
    g f e d
    d c c b
    c4 r r2
    \bar ".."
    \partial 2
    g''8
    ^\markup \halign #-.2 \teeny "Médium."
    f f e
    e
    ^\markup \halign #-.2 \teeny "Index."
    d d c
    e d c b
    c4 r r2
    \bar "|."
  }
  \\
  \relative {
    c'4
    _\markup \halign #-.2 \teeny "Pouce."
    c
    f, f
    g g
    e r r2
    \bar ".."
    b''4
    _\markup \halign #-.2 \teeny "Pouce."
    a g f g g, c r r2
  }
>>