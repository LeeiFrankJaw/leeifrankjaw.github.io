\version "2.24.3"
\language "english"

#(define RH rightHandFinger)

\layout {
  ragged-right = ##f
}

\relative {
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.digit-names = ##("." ".." "..." "....")
  a8\RH 1 [ a'\RH 2 c\RH 3 a\RH 2 e'\RH 3 a,\RH 2 c\RH 3 a\RH 2]
  \bar ".."
  a,\RH 1 [ a'\RH 2 c\RH 3 a\RH 2 e'\RH 4 a,\RH 2 c\RH 3 a\RH 2]
  \bar "|."
}
