\version "2.24.3"
\language "english"

\paper {
  score-system-spacing.basic-distance = #30
}

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

\score {
  \relative {
    \omit Staff.TimeSignature
    \time 6/4
    a''
    af-4
    g-3
    _\markup \lower #6 \halign #-.5  \tiny "Cantino"
    gf-2
    f-1
    e-0
    \bar ".."
    \time 5/4
    ef-4
    d-3
    df-2
    _\markup \lower #6 \halign #0  \tiny "Seconda"
    c-1
    b-0
    \bar ".."
    \partial 1
    bf-3
    a-2
    _\markup \lower #6 \halign #-.85 \tiny "Terza"
    af-1
    g-0
    \bar ".."
    gf-4
    f-3
    e-2
    _\markup \lower #6 \halign #-.2  \tiny "Quarta"
    ef-1
    d-0
    \bar ".."
    df-4
    c-3
    b-2
    _\markup \lower #6 \halign #-.2  \tiny "Quinta"
    bf-1
    a-0
    \bar ".."
    af-4
    g-3
    gf-2
    _\markup \lower #6 \halign #-.06  \tiny "Sesta Corda"
    f-1
    e-0
    \bar "|."
  }
}