\version "2.24.3"
\language "english"

\layout {
  ragged-last = ##f
}

\score {
  \relative {
    \time 5/4
    \omit Staff.TimeSignature
    e-0
    f-1
    fs-2
    _\markup \lower #6 \halign #-.15  \tiny "Sixième Corde."
    g-3
    gs-4
    \bar ".."
    a-0
    as-1
    b-2
    _\markup \lower #6 \halign #-.35  \tiny "Cinquième."
    c-3
    cs-4
    \bar ".."
    d-0
    ds-1
    e-2
    _\markup \lower #6 \halign #-.35  \tiny "Quatrième."
    f-3
    fs-4
    \bar ".."
    \partial 1
    g-0
    gs-1
    _\markup \lower #6 \halign #-.65 \tiny "Troisième."
    a-2
    as-3
    \bar ".."
    b-0
    c-1
    cs-2
    _\markup \lower #6 \halign #-.25  \tiny "Seconde."
    d-3
    ds-4
    \bar ".."
    \time 6/4
    e-0
    f-1
    fs-2
    _\markup \lower #6 \halign #-.5  \tiny "Chanterelle."
    g-3
    gs-4
    a
    \tweak self-alignment-X #-.35
    \textEndMark \markup \column {
      \halign #.18 \line {
        \finger \concat { 4 \hspace #.2 \with-dimension #X #'(0 . 0) . \super e }
        \fontsize #-2 "Doigt."
      }
      \halign #0 \line {
        \finger \concat { 5 \hspace #.2 \with-dimension #X #'(0 . 0) . \super e }
        \fontsize #-2 "Touche."
      }
    }
    \bar "|."
  }
}
