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
  a16\RH1[ a'\RH2 e\RH1 a\RH2
  c\RH3 a\RH2 e\RH1 a\RH2
  e'\RH3 a,\RH2 e\RH1 a\RH2
  c\RH3 a\RH2 e\RH1 a\RH2]
  \bar ".."
  a,16\RH1[ a'\RH2 e\RH1 a\RH2
  c\RH3 a\RH2 e\RH1 a\RH2
  e'\RH4 a,\RH2 e\RH1 a\RH2
  c\RH3 a\RH2 e\RH1 a\RH2]
  \bar "|."
}
