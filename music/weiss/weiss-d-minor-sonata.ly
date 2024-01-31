\version "2.24.3"
\language "english"

\header {
  title = "Sonata in D Minor, WeissSW 34"
  composer = "Sylvius Leopold Weiss"
  tagline = ##f
}

\paper {
  scoreTitleMarkup = \markup {
    \column {
      \vspace #1
      \fill-line {
        \fromproperty #'header:piece
        \fromproperty #'header:opus
      }
    }
  }
  system-system-spacing.padding = #4
}

\include "../baroque-lute-fretboards.ly"
\include "../roman_numeral_analysis_tool.ily"

\layout {
  \context {
    \FretBoards
    stringTunings = #baroque-lute-tuning
  }
  \context {
    \FiguredBass
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #3
  }
  \context {
    \Score
    tablatureFormat = #fret-letter-tablature-format
  }
  \context {
    \TabStaff
    stringTunings = #baroque-lute-tuning
    additionalBassStrings = \stringTuning <a,, bf,, c, d, e, f, g,>
    fretLabels = \markuplist
      \override #'((font-name . "Brush Script MT") (font-size . 2))
      {
        "a" "b" "c" "d" "e" "f" "g" "h" "i" "k"
      }
  }
  \context {
    \ChordNames
    \override ChordName.font-name = "Palatino Linotype"
  }
  \context {
    \Staff
    \override VerticalAxisGroup.staff-staff-spacing.padding = #3
  }
}

#(define RH rightHandFinger)

music = \relative {
  \transposition c
  f'4 d a f d a g f e d c b a
}

prelude = \relative {
  \key d \minor
  \transposition c
  <<
    {
      \voiceTwo
      d, d' d, d'
      d, d' d, d'
      d, d' cs a
      d d bf g
      c, c a' f
      \omit StringNumber
      bf\7 a g e
      a g fs'\5 d
      g, f e c
      f g a bf,
      c d e f~
      f g c, f
      c f a bf\7
      g c, cs' d
      g, a fs'\5 g,~
      g a2 g4
      f e d d
      d2 e4 f
      g g f e
      a d, c bf
      a' gs2 a4~
      a a d,2
      \bar "|."
    }
    \\
    {
      \voiceOne
      \omit StringNumber
      r16 f''\2 a f\2
      r f\2 [a f\2]
      r g\2 [bf g\2]
      r g\2 [bf g\2]
      r g\2 [a g\2]
      r g\2 [a g\2]
      r f\2 [a f\2]
      r f\2 [a f\2]
      r e [g e]
      r e [g e]
      r e [g e]
      r e [g e]
      r e [f e]
      r d [f d]
      r d [g d]
      r d [f d]
      r d\3 [e d\3]
      r c e c
      r e f e
      r a, e' a,
      r d bf d
      r d bf d
      r e bf e
      r d g, d'
      r c a\4 c
      r c a\4 c
      r d a d
      r c a\4 c
      r bf g bf
      r bf g bf
      r c g c
      r bf g bf
      r a g_(f)
      r bf_(a) g
      r c bf_(a)
      r d c_(bf)
      r e_(d) c
      r f e_(d)
      r g f\2_(e)
      r a e f
      c d a_(c)
      r bf g_(f)
      r e c'_(bf)
      r a g_(f)
      r e g bf
      r a f c'
      r c f e
      r d bf_(a)
      r b g'_(f)
      r e c_(bf)
      r a a'_(g)
      r f e_(d)
      r bf' e,_(d)
      r cs a\4_(g)
      r d' a' c,
      r b d a'
      e g d\3 g
      r cs, e g
      d\3 e f a,
      r bf f' e
      r a, e'_(d)
      r g, d' cs
      <f, a d>4
      <d fs c'>
      r16 d g bf
      a8.\trill g16
      r cs g e'
      r d a f'
      r e bf d
      <cs e a>4
      <a d a'>
      <b e g>
      <cs e g>
      <d d f>
      <d d f>
      <d d f>
      <d d f>
      <b d f>2
      r16 e\RH2 cs\RH2 g\RH2
      f\5\RH1 a d d,
      r e d' cs
      <f, a d>2
    }
  >>
}

preludeChords = \chordmode {
  d2:m
  g:m/d
  d:sus
  d:m
  e:m7.5-/d
  a4:7/cs a:7
  d2:m
  g4:m/bf g:m7
  c2
  f4:maj7/a f:maj7
  bf bf:maj7/a
  e:dim/g e:m7.5-
  a:m a:m7/g
  d d:7
  g:m g:m7/f
  c:/e c:7
  f g:m
  a:m bf
  a:m/c d:m
  e:dim d:m7/f
  s g:m7
  c:7 f
  c:7 f
  f:maj7/a bf:maj7
  g:7 c:7
  a:7/cs d:m
  e:dim7/g a:7
  d:7/fs g
  e:m7 a:7
  d:m e:dim/g
  d:m/f cs:dim/e
  d:m d:7
  g:m/d s
  a:7/e d:m/f
  e:m7.5-/g a:7/g
  d:m/f e:m
  a:7 d:m
  d:m7 bf
  d:m/a gs:dim7
  s a:7
  d:m/a a:7
  d2:m
}

preludeFigures = \figuremode {
  \bassFigureExtendersOn
  s2
  <6 4>4 <6 4>
  <5 4> <5 4>
  s s
  <2> <2>
  s <7>
  s s
  <6> <7>
  s s
  <6 5> <7>
  s <2>
  <6> <7>
  s <2>
  <6> <7>
  s <2>
  <6> <7>
  s2 s1
  s4 <6 5>
  <2> <7>
  <7> s
  <7> s
  <6 5> <7>
  <7> <7>
  <6 5> s
  <6 5> <7>
  <6 5> s
  <6> <7 _+>
  s <6>
  <6> <6>
  s <7>
  <6 4> <6 4>
  <6+> <6>
  <6 5> <6 4+ 2>
  <6> s
  <7> s
  <2> s
  <6 4> <7 _!>
  s <7 _+>
  <6 4> <7>
  s2
}

% \include "articulate.ly"

\score {
  \header {
    piece = "Prelude"
  }
  % \articulate
  <<
    % \new ChordNames \preludeChords
    \new Staff \transpose c c' \prelude
    % \new FiguredBass \preludeFigures
    \new TabStaff \prelude
  >>
  % \midi {}
}
