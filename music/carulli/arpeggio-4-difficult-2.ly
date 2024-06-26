\version "2.24.3"
\language "english"

#(define RH rightHandFinger)

\layout {
  ragged-right = ##f
}

AmArpFinger = \relative {
  a16\RH1 a'\RH2
  \once \set strokeFingerOrientations = #'(up down)
  <c\RH3 e\RH4>
  a\RH2
}

\relative {
  \set strokeFingerOrientations = #'(down)
  \override StrokeFinger.staff-padding = #'()
  \override StrokeFinger.digit-names = ##("." ".." "..." "....")
  \repeat percent 4 \AmArpFinger
  \bar "|."
}
