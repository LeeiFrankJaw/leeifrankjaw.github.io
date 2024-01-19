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
    a16\RH 1 [ e'\RH 2 a\RH 3 c\RH 4 a\RH 3 e\RH 2
    e'\RH 4 a,\RH 3 e\RH 2 c'\RH 4 a\RH 3 e\RH 2]
    a,[ e' a c a e e' a, e c' a e]
  }
  \bar "|."
}
