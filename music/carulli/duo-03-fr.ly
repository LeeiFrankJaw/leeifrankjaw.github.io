\version "2.24.3"
\language "english"

% EAscendMinor = { e fs g a b cs ds }

dMotif = \relative {
  a g
  fs8 e fs d
  cs b cs a
  d4 fs
}

dMotifCourtesy = \relative {
  a g
  fs8 e fs d!
  cs b cs a
  d4 fs
}

dMotifCourtesyTwo = \relative {
  a g!
  fs8 e fs d
  cs b cs a
  d4 fs
}

theme = \relative {
  \dMotif
  b a
  cs d
  b8 a g fs
  fs4 e
}

eMotif = \relative {
  b a
  g8 fs g e
  ds cs ds b
  e4 g
}

bridgeDynamics = \relative {
  a_\f cs
  <d d,> d8 fs
  <e a,,>4 e8 g
  <fs d,>4 d
}

bridge = \relative {
  a cs
  <d d,> d8 fs
  <e a,,>4 e8 g
  <fs d,>4 d
}

bBridge = \relative {
  fs as
  b b8 d
  cs4 cs8 e
  d4 b
}

student = \relative {
  \transposition c
  \key d \major
  \overrideTimeSignatureSettings 2/4 1/8 4 #'()
  \time 2/4
  \tempo "Allegro."
  \override Staff.Rest.style = #'classical
  \tweak self-alignment-X #1.85
  \textMark \markup {
    \concat {
      "3"
      \hspace #.9
      \with-dimension #X #'(0 . -.9) .
      \super me
    } "LEÇON."
  }
  \theme
  \bridgeDynamics
  g' fs e fs
  g8 fs e d
  <d a,>4 cs
  b ds
  <e e,,> e8 g
  fs4 fs8 a
  <g e,,>4 e
  \dMotifCourtesy
  \bBridge
  \transpose d a, \dMotif
  \bridge
  a a
  b8 b, b'4
  g g
  a8 a, a'4
  fs fs
  g8 g, g'4
  e e
  fs8 fs, fs'4
  d d
  <<
    { \voiceOne b8 g' fs e d fs e cs }
    \new Voice { \voiceTwo g4 s a, a}
  >>
  \oneVoice
  <d' d,>4 r
}

teacher = \relative {
  \transposition c
  \key d \major
  \overrideTimeSignatureSettings 2/4 1/8 4 #'()
  \time 2/4
  \override Staff.Rest.style = #'classical
  R2*8
  \theme
  \eMotif
  \bridge
  \transpose e b, \eMotif
  \transpose d a, \bridge
  \dMotifCourtesyTwo
  d8 d' fs d
  g, ds e d!
  cs cs' e cs
  fs, cs d cs
  b b' d b
  e, bs cs b
  a a' cs a
  d, d' a fs
  b, fs' b, fs'
  g, b' a g
  fs a g e
  d4 r
}

\new PianoStaff <<
  \new Staff \with {
    instrumentName = "L'Eleve."
  }  \transpose c c' \student
  \new Staff \with {
    instrumentName = "Le Maitre."
  } \transpose c c' \teacher
>>