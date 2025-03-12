\version "2.24.3"
\language "english"

% Basic third intervals
thirdsAI = \relative { a16 c-1 }
thirdsAII = \relative { a8-2 }

thirdsAtwoI = \relative { a,16 c-2 }
thirdsAtwoII = \relative { a,8-4 }

thirdsGI = \relative { g16 b-0 }
thirdsGII = \relative { g8-0 }

thirdsgsI = \relative { gs'16\2 b-1 }
thirdsgsII = \relative { gs'8\2-2 }

thirdsGstwoI = \relative { gs,16 b-1 }
thirdsGstwoII = \relative { gs,8-3 }

thirdsFI = \relative { f16 a-1 }
thirdsFII = \relative { f8-2 }
thirdsFtwoI = \relative { f16 a-2 }
thirdsFtwoII = \relative { f8-3 }

thirdsdI = \relative { d'16 f-1 }
thirdsdII = \relative { d'8-3 }
thirdsdtwoI = \relative { d'16 fs-1 }
thirdsdtwoII = \relative { d'8-2 }

thirdseI = \relative { e'16\2 g-2 }
thirdseII = \relative { e'8\2-4 }

thirdsesI = \relative { es'16\2 gs-1 }

thirdscI = \relative { c'16 e-0 }
thirdscII = \relative { c'8-1 }

thirdsBI = \relative { b16\3 d-3 }
thirdsBII = \relative { b8\3-4 }

thirdsfI = \relative { f'16\2 a-3 }
thirdsfII = \relative { f'8\2-4 }

thirdsGsI = \relative { gs16 b-0 }
thirdsGsII = \relative { gs8-1 }

thirdsEI = \relative { e16 g-0 }
thirdsEII = \relative { e8-1 }
thirdsEtwoI = \relative { e16 gs-1 }
thirdsEtwoII = \relative { e8-2 }

thirdsDI = \relative { d16\5 f-2 }
thirdsDII = \relative { d8\5-4 }

thirdsDtwoI = \relative { d16\5 fs-3 }

thirdsCI = \relative { c16 e-1 }
thirdsCII = \relative { c8-2 }

thirdsBtwoI = \relative { b,16 d-0 }
thirdsBtwoII = \relative { b,8-1 }

thirdsFsI = \relative { fs16 a-1 }
thirdsFsII = \relative { fs8-3 }
thirdsFstwoI = \relative { fs16 a-2 }
thirdsFstwoII = \relative { fs8-4 }

thirdsfsI = \relative { fs'16\2 a-2 }
thirdsfsII = \relative { fs'8\2-4 }

thirdscsI = \relative { cs'16 e-0 }
thirdscsII = \relative { cs'8-2 }

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

thirdsBcsI = { \thirdsBI \thirdscsI }
thirdsBcsII = { \thirdsBII \thirdscsII }

thirdsdcI = \relative { d'16 f!-1 c e-0 }
thirdsdcII = \relative { d'8-3 c-1 }

thirdsBAI = \relative { b16\3 d-3 a c-1 }
thirdsBAII = \relative { b8\3-4 a-2 }

thirdsGFI = \relative {
  g16 b-0
  \accidentalStyle forget
  f
  \accidentalStyle modern
  a-2
}
thirdsGFII = \relative { g8-0 f-3 }

thirdsEDI = \relative { e16 g-0 d\5 f-2 }
thirdsEDII = \relative { e8-2 d\5-4 }
thirdsEDtwoII = \relative { e8-1 d\5-4 }

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

thirdsBAtwoI = \relative { b,!16 d-0 a\6 c-2 }
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
      \thirdsBcsI
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
      \thirdsAtwoI \thirdsGstwoI
      \thirdsAtwoI \thirdsBtwoI
      \thirdsCI \thirdsAtwoI
      \thirdsBtwoI \thirdsGstwoI
      \thirdsAtwoI \thirdsAI
      \thirdscI \thirdsBI
      \thirdsAI \thirdsGI
      \thirdsFsI \thirdsEI
      \thirdsDtwoI \thirdscsI
      \thirdsdtwoI \thirdseI
      \thirdsfsI \thirdsesI
      \thirdsfsI \thirdsgsI
      \relative { a'16 c!-2 g b-1 }
      \relative { fs'16 a-1 } \thirdseI
      \thirdsdtwoI \thirdscI
      \thirdsBAI
      \thirdsEmGI
      \thirdscI \thirdsAI
      \thirdsBI \thirdsGI
      \thirdsAI \thirdsFstwoI
      \thirdsGI \thirdsBI
      \thirdsAI \thirdsFstwoI
      \thirdsGI \thirdsBI
      \thirdsAI \thirdsFstwoI
      \thirdsGI \thirdsEI
      \thirdsFI \thirdsDI
      \thirdsEI \thirdsCI
      \thirdsDI \thirdsBtwoI
      \thirdsCI \thirdsEI
      \thirdsDI \thirdsBtwoI
      \thirdsCI \thirdsEI
      \thirdsDI \thirdsBtwoI
      \thirdsCI \thirdsDI
      \thirdsEFI
      \thirdsGAI
      \thirdsBI \thirdscI
      \relative { f'4-1 r g2 }
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
      \thirdsBcsII
      \thirdsdcII
      \thirdsBAII
      \thirdsGFII
      \thirdsEDII
      \thirdsCBCDII
      \thirdsEFII
      \thirdsGFtwoII
      \thirdsEDtwoII
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
      \thirdsEtwoII \thirdsDII
      \thirdsCII \thirdsBtwoII
      \thirdsAtwoII \thirdsGstwoII
      \thirdsAtwoII \thirdsBtwoII
      \thirdsCII \thirdsAtwoII
      \thirdsBtwoII \thirdsGstwoII
      \thirdsAtwoII \thirdsAII
      \thirdscII \thirdsBII
      \thirdsAII g!8-0
      \thirdsFsII \thirdsEII
      \thirdsDII cs8-1
      \thirdsdtwoII \thirdseII
      \thirdsfsII es-3
      \thirdsfsII \thirdsgsII
      \relative { a'8\2-4 g-2 }
      \relative { fs'8-3 } \thirdseII
      \thirdsdtwoII \accidentalStyle forget \thirdscII \accidentalStyle modern
      \thirdsBAII
      \thirdsEmGII
      \thirdscII \thirdsAII
      \thirdsBII \thirdsGII
      \thirdsAII \thirdsFstwoII
      \thirdsGII \thirdsBII
      \thirdsAII \thirdsFstwoII
      \thirdsGII \thirdsBII
      \thirdsAII \thirdsFstwoII
      \thirdsGII \thirdsEII
      \thirdsFII \thirdsDII
      \thirdsEII \thirdsCII
      \thirdsDII \thirdsBtwoII
      \thirdsCII \thirdsEII
      \thirdsDII \thirdsBtwoII
      \thirdsCII \thirdsEII
      \thirdsDII \thirdsBtwoII
      \thirdsCII \thirdsDII
      \thirdsEFII
      \thirdsGAII
      \thirdsBII \thirdscII
      \relative {
        d'4-3 b4\rest <g, g' b>2
        \set fingeringOrientations = #'(left)
        <c-3 e-2 g-0 c-1 e-0>1\arpeggio
      }
      \bar "|."
    }
    \\
    {
      s8^\markup \raise #.5 \center-align "Ⅱ"
      \repeat unfold 14 { s \noBreak }
      s^\markup \raise #1.5 \halign #-1.5 "Ⅰ" \noBreak
      \repeat unfold 7 { s \noBreak }
      s
      \repeat unfold 7 { s }
      s^\markup "Ⅱ" \noBreak
      \repeat unfold 15 { s \noBreak }
      s
      \repeat unfold 18 { s \noBreak }
      s^\markup "Ⅰ"
      \repeat unfold 4 { s \noBreak }
      s^\markup "Ⅱ"
      s^\markup "Ⅰ"
      \repeat unfold 8 { s \noBreak }
      s^\markup "Ⅱ"
      \repeat unfold 3 { s \noBreak }
      s^\markup \halign #-.5 "Ⅲ"
      s^\markup "Ⅰ"
      \repeat unfold 6 { s \noBreak }
      s^\markup "Ⅱ"
      s \noBreak
      s
      \repeat unfold 9 { s \noBreak }
      s^\markup "Ⅰ"
      \repeat unfold 4 { s \noBreak }
      s^\markup "Ⅱ"
      \repeat unfold 5 { s \noBreak }
      s^\markup \halign #-.7 "Ⅳ"
      \repeat unfold 2 { s \noBreak }
      s^\markup \halign #-.55  "Ⅶ"
      \repeat unfold 2 { s }
      s^\markup "Ⅴ"
      s^\markup "Ⅱ"
      s
      s^\markup "Ⅰ"
      \repeat unfold 3 { s \noBreak }
      s^\markup "Ⅱ"
      s^\markup "Ⅰ"
      \repeat unfold 12 { s \noBreak }
      s
      s
      s^\markup "Ⅱ"
      \repeat unfold 19 { s \noBreak }
      s^\markup "Ⅰ"
      \repeat unfold 18 { s \noBreak }
    }
    \\
    {
      \repeat unfold 21 { s1 }
      s4 c,2\rest
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
