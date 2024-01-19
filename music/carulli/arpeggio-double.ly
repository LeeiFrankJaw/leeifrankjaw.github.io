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
  \repeat percent 4
  \tuplet 3/2 {
    \once \set strokeFingerOrientations = #'(up down)
    <a\RH1 a'\RH2>8 c'\RH3 e\RH4
  }
  \bar ".."
  \repeat percent 4
  \tuplet 3/2 {
    a,,\RH1
    \set strokeFingerOrientations = #'(up down)
    <a'\RH2 c\RH3> <c\RH2 e\RH3>
  }
  \bar ".."
  \repeat percent 2 {
    <a,\RH1 a'\RH2>8
    \set strokeFingerOrientations = #'(down)
    e''\RH3 c\RH2 e\RH3
  }
  \bar ".."
  \repeat percent 2 {
    a,,\RH1
    \once \set strokeFingerOrientations = #'(up down)
    <c'\RH2 e\RH3>
    a\RH1
    \once \set strokeFingerOrientations = #'(up down)
    <c\RH2 e\RH3>
  }
  \bar ".."
  \repeat percent 2 {
    a,\RH1
    \set strokeFingerOrientations = #'(up down)
    <a'\RH2 c\RH3> <c\RH2 e\RH3> <a\RH2 c\RH3>
  }
  \bar "|."
}
