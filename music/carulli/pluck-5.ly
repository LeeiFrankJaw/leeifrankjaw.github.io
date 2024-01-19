\version "2.24.3"
\language "english"

\layout {
  ragged-right = ##f
}

\relative {
  \omit Staff.TimeSignature
  % \once \override NoteHead.extra-spacing-width = #'(0 . 8)
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.digit-names = ##("." ".." "..." "....")
  \override StrokeFinger.avoid-slur = #'inside
  <c' e g c e>
  ^\markup \halign #-1.75 \teeny "Si pizzica"
  c32\rightHandFinger 1 [
    (e)\rightHandFinger 1
    \once \override StrokeFinger.padding = 0.8
    g\rightHandFinger 2
    c\rightHandFinger 3
    e\rightHandFinger 4
  ]
  \bar "|."
}