\version "2.24.3"
\language "english"

#(define RH rightHandFinger)

\layout {
  ragged-right = ##f
}

AmArpFinger = \relative \tuplet 3/2 { a8\RH1 a'\RH2 c\RH3 a\RH2 e'\RH3 a,\RH2 }
AmArp = { \omit StrokeFinger \AmArpFinger \undo \omit StrokeFinger }

\relative {
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.digit-names = ##("." ".." "..." "....")
  \omit TupletNumber
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/12)
  \set Timing.beatStructure = 6,6
  \AmArpFinger
  \AmArp
  \bar "|."
}
