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
    _\markup \lower #6 \halign #-.15  \tiny "Sesta Corda"
    g-3
    gs-4
    \bar ".."
    a-0
    as-1
    b-2
    _\markup \lower #6 \halign #-.35  \tiny "Quinta"
    c-3
    cs-4
    \bar ".."
    d-0
    ds-1
    e-2
    _\markup \lower #6 \halign #-.35  \tiny "Quarta"
    f-3
    fs-4
    \bar ".."
    \partial 1
    g-0
    gs-1
    _\markup \lower #6 \halign #-.85 \tiny "Terza"
    a-2
    as-3
    \bar ".."
    b-0
    c-1
    cs-2
    _\markup \lower #6 \halign #-.25  \tiny "Seconda"
    d-3
    ds-4
    \bar ".."
    \time 6/4
    e-0
    f-1
    fs-2
    _\markup \lower #6 \halign #-.5  \tiny "Cantino"
    g-3
    gs-4
    a
    \tweak self-alignment-X #-.25
    \textEndMark \markup \column {
      \halign #-1.06 \line { \finger "4" \fontsize #-2 "_Ditto" }
      \halign #-1.1 \line { \finger "5" \fontsize #-2 "_Tasto" }
    }
    \bar "|."
  }
}
