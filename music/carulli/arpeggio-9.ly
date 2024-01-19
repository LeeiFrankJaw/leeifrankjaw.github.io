\version "2.24.3"
\language "english"

#(define RH rightHandFinger)

\layout {
  ragged-right = ##f
}

\relative {
  \time 6/8
  \omit TupletNumber
  \omit TupletBracket
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.digit-names = ##("." ".." "..." "....")
  \repeat percent 2 \tuplet 3/2 {
    a16\RH 1 a'\RH 2 c\RH 3 e\RH 4 c\RH 3 a\RH 2 e'\RH 4 c\RH 3
    \once \override NoteHead.extra-spacing-width = #'(0 . 4.5)
    a\RH 2
  }
  \bar "|."
}
