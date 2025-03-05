\version "2.24.3"
\language "english"

#(define RH rightHandFinger)

\layout {
  ragged-right = ##f
  system-count = #5
}

AmArpFinger = \relative \tuplet 3/2 { a8 c'-1 e a,-2 c e }
AmArp = { \omit Fingering \AmArpFinger \undo \omit Fingering }

AmEArpFinger = \relative \tuplet 3/2 { e'8-2 c'-1 e a,-3 c e }
AmEArp = { \omit Fingering \AmEArpFinger \undo \omit Fingering }

EArpFinger = \relative \tuplet 3/2 { e8 b'' e gs,-1 b e }
EArp = { \omit Fingering \EArpFinger \undo \omit Fingering }

ESevenArpFinger = \relative \tuplet 3/2 { e8 d''-4 e gs,-1 d' e }
ESevenArp = { \omit Fingering \ESevenArpFinger \undo \omit Fingering }

ASevenArpFinger = \relative \tuplet 3/2 { a8 cs'-2 g'!-4 a,-1 cs g' }
ASevenArp = \relative \tuplet 3/2 { a8 cs' g' a, cs g' }

DmArpFinger = \relative \tuplet 3/2 { d'8 d'-3 f-1 a,-2 d f }
DmArp = { \omit Fingering \DmArpFinger \undo \omit Fingering }

CArpFinger = \relative \tuplet 3/2 { c'8-3 c'-1 e g, c e }
CArp = { \omit Fingering \CArpFinger \undo \omit Fingering }

GSevenDArpFinger = \relative \tuplet 3/2 { d'8 b' f'-1 g, b f' }
GSevenDArp = { \omit Fingering \GSevenDArpFinger \undo \omit Fingering }

GSevenArpFinger = \relative \tuplet 3/2 { g8-3 b' f'-1 g, b f' }
GSevenArp = { \omit Fingering \GSevenArpFinger \undo \omit Fingering }

CEArpFinger = \relative \tuplet 3/2 { e'8-2 c'-1 g'-4 g, c g' }
CEArp = { \omit Fingering \CEArpFinger \undo \omit Fingering }

DmFArpFinger = \relative \tuplet 3/2 { f'8-3 d'-4 f-1 a,-2 d f }
DmFArp = { \omit Fingering \DmFArpFinger \undo \omit Fingering }

CGArpFinger = \relative \tuplet 3/2 { g8-3 c'-1 e g, c e }
CGArp = { \omit Fingering \CGArpFinger \undo \omit Fingering }

ECadentialSixFour = { \AmEArp \EArp }
GCadentialSixFour = { \CGArpFinger \GSevenArpFinger }

% \new TabStaff \transpose c' c
\relative {
  \set Staff.instrumentName = "Moderato."
  \omit TupletNumber
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/12)
  \set Timing.beatStructure = 6,6
  \override Staff.Rest.style = #'classical
  \AmArpFinger
  \AmArp
  \EArpFinger
  \EArp
  \ESevenArpFinger
  \ESevenArp
  \repeat unfold 2 \AmArp
  \break
  \ASevenArpFinger
  \ASevenArp
  \repeat percent 2 \DmArpFinger
  \AmEArpFinger
  \EArp
  \repeat percent 2 \AmArp
  \repeat percent 2 \CArpFinger
  \GSevenDArpFinger
  \GSevenDArp
  \repeat percent 2 \GSevenArpFinger
  \repeat percent 2 \CArp
  \stemUp
  \repeat percent 2 \CEArpFinger
  \repeat percent 2 \DmFArpFinger
  \GCadentialSixFour
  c' \stemDown f' e d c b a gs
  \stemUp
  \repeat percent 2 \AmArp
  \repeat percent 2 \EArp
  \repeat percent 2 \ESevenArp
  \repeat percent 2 \AmArp
  \repeat percent 2 \ASevenArp
  \repeat percent 2 \DmArp
  \ECadentialSixFour
  \AmArp
  a,4 r
  \bar "|."
}
