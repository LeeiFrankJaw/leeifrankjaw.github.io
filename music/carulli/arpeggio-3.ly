\version "2.24.3"
\language "english"

#(define RH rightHandFinger)

\layout {
  ragged-right = ##f
}

\relative {
  \omit TupletNumber
  \omit TupletBracket
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.digit-names = ##("." ".." "..." "....")
  \tuplet 3/2 {
    a8\RH 1 c'\RH 2 e\RH 3 a,\RH 1 ^[ c\RH 2 e\RH 3]
    a,, c' e a,^[ c e]
  }
  \bar "|."
}
