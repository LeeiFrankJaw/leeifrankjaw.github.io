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
      cs a d d
      bf g c, c
      a' f
      \omit StringNumber
      bf\7 a
      g e a g
      fs'\5 d g,
      f e c f g
      a bf, c d
      e f c'' g,
      c, f c f
      a
      \bar "|."
    }
    \\
    {
      \omit StringNumber
      \voiceOne
      r16 f''\2 [a f\2]
      r f\2 [a f\2]
      r g\2 [bf g\2]
      r g\2 [bf g\2]
      r g\2 [a g\2]
      r g\2 [a g\2]
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
      r d a_(c)
      r bf g_(f)
      r e c'_(bf)
      r a g_(f)
      r e g bf
      r a f c'
      r c f e
    }
  >>
}

preludeChords = \chordmode {
  d2:m  g:m/d b:aug7/d e:m7.5-
  a4:7/cs a:7
  d:m3.9 d:m
  g:m/bf g:m7
  c:3.9 c
  f:7/a f:7
  bf bf:7/a
  e:dim/g e:m7.5-
  a:m a:m7/g
  d d:7
  g:m g:m7/f
  c:/e c:7
  f g:m
  a:m e:m7.5-/bf
  a:m/c d:m
  e:dim f:maj7
  d:m7/c g:m7
  c:7 f
  c:7 f
  a:m
}

preludeFigures = \figuremode {
  s2
  \bassFigureExtendersOn
  <6 4>4 <6 4>
  <5 4> <5 4>
  <2> <2>
  s <7>
  <3 2> <3>
  <6> <7>
  <3 2> <3>
  <6 5> <7>
  s <2>
  <6> <7>
  s <2>
  <6> <7>
  s <2>
  <6> <7>
  s2 s1
  s4 <7>
  <2> <7>
  <7> s
  <7> s
  s
}

\score {
  \header {
    piece = "Prelude"
  }
  <<
    \new ChordNames \preludeChords
    \new Staff \transpose c c' \prelude
    \new FiguredBass \preludeFigures
    \new TabStaff \prelude
  >>
}
