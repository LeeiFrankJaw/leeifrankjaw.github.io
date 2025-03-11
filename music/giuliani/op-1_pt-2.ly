\version "2.24.3"
\language "english"

% Basic third intervals
thirdsAI = \relative { a16 c-1 }
thirdsAII = \relative { a8-2 }

thirdsGI = \relative { g16 b-0 }
thirdsGII = \relative { g8-0 }

thirdsFtwoI = \relative { f16 a-2 }
thirdsFtwoII = \relative { f8-3 }

thirdsdI = \relative { d'16 f-1 }
thirdsdII = \relative { d'8-3 }

thirdseI = \relative { e'16\2 g-2 }
thirdseII = \relative { e'8\2-4 }

thirdscI = \relative { c'16 e-0 }
thirdscII = \relative { c'8-1 }

thirdsBI = \relative { b16\3 d-3 }
thirdsBII = \relative { b8\3-4 }

thirdsfI = \relative { f'16\2 a-3 }
thirdsfII = \relative { f'8\2-4 }

thirdsGsI = \relative { gs16 b-0 }
thirdsGsII = \relative { gs8-1 }

thirdsEtwoI = \relative { e16 gs-1 }
thirdsEII = \relative { e8-2 }

thirdsDI = \relative { d16\5 f-2 }
thirdsDII = \relative { d8\5-4 }

thirdsCI = \relative { c16 e-1 }
thirdsCII = \relative { c8-2 }

thirdsBtwoI = \relative { b,16 d-0 }
thirdsBtwoII = \relative { b,8-1 }

% Third interval groups
thirdsCBCDI = \relative {
  c16 e-1 b d-0
  c e-1 d\5 f-2
}

thirdsCBCDII = \relative { c8-2 b-1 c-2 d\5-4 }

thirdsEFI = \relative { e16 g-0 f a-1 }
thirdsEFII = \relative { e8-1 f-2 }

thirdsDEI = \relative { d16\5 f-2 e g-0 }
thirdsDEII = \relative { d8-4 e-1 }

thirdsGAI = \relative { g16 b-0 a c-1 }
thirdsGAII = \relative { g8-0 a-2 }

thirdsGFsI = \relative { g16 b-0 fs a-2 }
thirdsGFsII = \relative { g8-0 fs-4 }

thirdsBAsI = \relative { b16\3 d-3 as cs-2 }
thirdsBAsII = \relative { b8\3-4 as-3 }

thirdsBCsI = \relative { b16\3 d-3 cs e-0 }
thirdsBCsII = \relative { b8\3-4 cs-2 }

thirdsdcI = \relative { d'16 f!-1 c e-0 }
thirdsdcII = \relative { d'8-3 c-1 }

thirdsBAI = \relative { b16\3 d-3 a c-1 }
thirdsBAII = \relative { b8\3-4 a-2 }

thirdsGFI = \relative { g16 b-0 f a-2 }
thirdsGFII = \relative { g8-0 f-3 }

thirdsEDI = \relative { e16 g-0 d\5 f-2 }
thirdsEDII = \relative { e8-2 d\5-4 }

thirdsGFtwoI = \relative { g16\4 bf-2 f a-1 }
thirdsGFtwoII = \relative { g8\4-4 f-2 }

thirdsCsDI = \relative { cs16 e-1 d\5 f-2 }
thirdsCsDII = \relative { cs8-3 d\5-4 }

thirdsEGI = \relative { e16 g-0 g bf-2 }
thirdsEGII = \relative { e8-1 g\4-4 }

thirdsFEI = \relative { f16 a-1 e g-0 }
thirdsFEII = \relative { f8-2 e-1 }

thirdsDCsI = \relative { d16\5 f-2 cs e-1 }
thirdsDCsII = \relative { d8\5-4 cs-3 }

thirdsFDI = \relative { f16 a-1 d,\5 f-2 }
thirdsFDII = \relative { f8-2 d\5-4 }

thirdsECsI = \relative { e16 g-0 cs, e-1 }
thirdsECsII = \relative { e8-1 cs-3 }

thirdsDCI = \relative { d16\5 f-2 c e-1 }
thirdsDCII = \relative { d8\5-4 c-2 }

thirdsBAtwoI = \relative { b,16 d-0 a\6 c-2 }
thirdsBAtwoII = \relative { b,8-1 a\6-4 }

thirdsGArpI = \relative { g,16 b-1 g' b-0 }
thirdsGArpII = \relative { g,8-2 g'-0 }

thirdsCArpI = \relative { c16 e-2 c' e-0 }
thirdsCArpII = \relative { c8-3 c'-1 }

thirdsAGI = { \thirdsAI \thirdsGI }
thirdsAGII = { \thirdsAII \thirdsGII }

thirdsDmFArpI = { \thirdsFtwoI \thirdsdI }
thirdsDmFArpII = { \thirdsFtwoII \thirdsdII }

thirdsEmGI = { \thirdsGI \thirdseI }
thirdsEmGII = { \thirdsGII \thirdseII }

thirdscBI = { \thirdscI \thirdsBI }
thirdscBII = { \thirdscII \thirdsBII }

thirdsFAArpI = { \thirdsAI \thirdsfI }
thirdsFAArpII = { \thirdsAII \thirdsfII }

thirds = \relative {
  \transposition c
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/8)
  \accidentalStyle modern
  <<
    {
      \set Voice.beatStructure = 1,1,1,1,1,1,1,1
      \omit StringNumber
      \thirdsCBCDI
      \thirdsEFI
      \thirdsDEI
      \thirdsCBCDI
      \thirdsEFI
      \thirdsGAI
      \thirdsGFsI
      \thirdsGAI
      \thirdsBAsI
      \thirdsBCsI
      \thirdsdcI
      \thirdsBAI
      \thirdsGFI
      \thirdsEDI
      \thirdsCBCDI
      \thirdsEFI
      \thirdsGFtwoI
      \thirdsEDI
      \thirdsCsDI
      \thirdsEGI
      \thirdsFEI
      \thirdsDCsI
      \thirdsDEI
      \thirdsFDI
      \thirdsECsI
      \thirdsDEI
      \thirdsFEI
      \thirdsDCI
      \thirdsBAtwoI
      \thirdsGArpI
      \thirdsBAI
      \thirdsGFI
      \thirdsEDI
      \thirdsCArpI
      \thirdsAGI
      \thirdsDmFArpI
      \thirdsBAI
      \thirdsEmGI
      \thirdscBI
      \thirdsFAArpI
      \thirdsdI \thirdscI
      \thirdsBAI
      \thirdsGsI \thirdsFtwoI
      \thirdsEtwoI \thirdsDI
      \thirdsCI \thirdsBtwoI
    }
    \\
    {
      \set Voice.beatStructure = 2,2,2,2
      \omit StringNumber
      \thirdsCBCDII
      \thirdsEFII
      \thirdsDEII
      \thirdsCBCDII
      \thirdsEFII
      \thirdsGAII
      \thirdsGFsII
      \thirdsGAII
      \thirdsBAsII
      \thirdsBCsII
      \thirdsdcII
      \thirdsBAII
      \thirdsGFII
      \thirdsEDII
      \thirdsCBCDII
      \thirdsEFII
      \thirdsGFtwoII
      \thirdsEDII
      \thirdsCsDII
      \thirdsEGII
      \thirdsFEII
      \thirdsDCsII
      \thirdsDEII
      \thirdsFDII
      \thirdsECsII
      \thirdsDEII
      \thirdsFEII
      \thirdsDCII
      \thirdsBAtwoII
      \thirdsGArpII
      \thirdsBAII
      \thirdsGFII
      \thirdsEDII
      \thirdsCArpII
      \thirdsAGII
      \thirdsDmFArpII
      \thirdsBAII
      \thirdsEmGII
      \thirdscBII
      \thirdsFAArpII
      \thirdsdII \thirdscII
      \thirdsBAII
      \thirdsGsII \thirdsFtwoII
      \thirdsEII \thirdsDII
      \thirdsCII \thirdsBtwoII
    }
    \\
    {
      s8^\markup \raise #.5 \center-align "II"
      \repeat unfold 14 { s \noBreak }
      s^\markup \raise #1.5 \halign #-1.5 "I" \noBreak
      \repeat unfold 7 { s \noBreak }
      s
      \repeat unfold 7 { s }
      s^\markup "II" \noBreak
      \repeat unfold 15 { s \noBreak }
      s
      \repeat unfold 18 { s \noBreak }
      s^\markup "I"
      \repeat unfold 4 { s \noBreak }
      s^\markup "II"
      s^\markup "I"
      \repeat unfold 8 { s \noBreak }
      s^\markup "II"
      \repeat unfold 3 { s \noBreak }
      s^\markup "III"
      s^\markup "I"
      \repeat unfold 6 { s \noBreak }
      s^\markup "II"
      s \noBreak
      s
      \repeat unfold 23 { s \noBreak }
      s
      \repeat unfold 23 { s \noBreak }
      s
      \repeat unfold 40 { s \noBreak }
    }
  >>
}


% \include "articulate.ly"

\score {
  \layout {
    system-count = #7
  }
  \new Staff \with {
    instrumentName = \markup {
      \concat {
        N
        \hspace #.1
        \with-dimension #X #'(0 . 0) -
        \super o
      } 1.
    }
  }
  \transpose c c' \thirds
  % \midi {}
}
