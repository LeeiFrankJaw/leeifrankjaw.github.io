\version "2.24.3"
\language "english"

#(define RH rightHandFinger)

\layout {
  ragged-right = ##f
}

AmArpFinger = \relative {
  a16\RH1 c'\RH2
  \once \set strokeFingerOrientations = #'(up down)
  <a\RH1 e'\RH3>
  c\RH2
  \once \set strokeFingerOrientations = #'(up down)
  <a\RH1 e'\RH3>
  c\RH2
  \once \set strokeFingerOrientations = #'(up down)
  <a\RH1 e'\RH3>
  c\RH2
}

\relative {
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.digit-names = ##("." ".." "..." "....")
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/16)
  \set Timing.beatStructure = 8,8
  \repeat percent 2 \AmArpFinger
  \bar "|."
}
