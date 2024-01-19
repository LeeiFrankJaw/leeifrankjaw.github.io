\version "2.24.3"
\language "english"

#(define RH rightHandFinger)

\layout {
  ragged-right = ##f
}

\relative {
  \time 6/8
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.digit-names = ##("." ".." "..." "....")
  a16\RH 1 c'\RH 2 e\RH 3 c\RH 2 a\RH 1 c\RH 2
  a, c' e c a c
  \bar ".."
  a,\RH 1 a'\RH 2 c\RH 3 e\RH 4 c\RH 3 a\RH 2
  a, a' c e c a
  \bar "|."
}
