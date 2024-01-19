\version "2.24.3"
\language "english"

\layout {
  ragged-last = ##f
}

\score {
  \relative {
    \omit Staff.TimeSignature
    \time 6/4
    a''
    af-4
    g-3
    _\markup \lower #6 \halign #-.5  \tiny "Chanterelle."
    gf-2
    f-1
    e-0
    \bar ".."
    \time 5/4
    ef-4
    d-3
    df-2
    _\markup \lower #6 \halign #0  \tiny "Seconde."
    c-1
    b-0
    \bar ".."
    \partial 1
    bf-3
    a-2
    _\markup \lower #6 \halign #-.65 \tiny "Troisième."
    af-1
    g-0
    \bar ".."
    gf-4
    f-3
    e-2
    _\markup \lower #6 \halign #-.2  \tiny "Quatrième."
    ef-1
    d-0
    \bar ".."
    df-4
    c-3
    b-2
    _\markup \lower #6 \halign #-.2  \tiny "Cinquième."
    bf-1
    a-0
    \bar ".."
    af-4
    g-3
    gf-2
    _\markup \lower #6 \halign #-.06  \tiny "Sixième."
    f-1
    e-0
    \bar "|."
  }
}