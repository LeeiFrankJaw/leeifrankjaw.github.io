\version "2.24.3"
\language "english"

#(define RH rightHandFinger)

\layout {
  ragged-right = ##f
}

AmArpFinger = \relative \tuplet 3/2 { a8\RH1 e''\RH3 c\RH2 a\RH1 e'\RH3 c\RH2 }
AmArp = { \omit StrokeFinger \AmArpFinger \undo \omit StrokeFinger }

\relative {
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.digit-names = ##("." ".." "..." "....")
  \omit TupletNumber
  \omit TupletBracket
  \stemUp
  \AmArpFinger
  \AmArp
  \bar "|."
}
