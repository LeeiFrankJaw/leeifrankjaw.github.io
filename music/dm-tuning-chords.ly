\version "2.24.3"
\language "english"

\header {
  title = "Chord Diagram for Baroque Lute"
  subtitle = "or any instrument tuned to A, D, F, A, D, F "
  composer = "Leei F. Jaw"
  tagline = ##f
}

\paper {
  scoreTitleMarkup = \markup {
    \column {
      \vspace #1
      \fill-line {
        \null
        \fromproperty #'header:piece
        \fromproperty #'header:opus
      }
      \vspace #1
    }
  }
}

\include "./baroque-lute-fretboards.ly"
\include "./roman_numeral_analysis_tool.ily"

\layout {
  \context {
    \FretBoards
    stringTunings = #baroque-lute-tuning
  }
  \context {
    \Lyrics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
  }
  \context {
    \Score
    tablatureFormat = #fret-letter-tablature-format
  }
  \context {
    \TabStaff
    stringTunings = #baroque-lute-tuning
    additionalBassStrings = #baroque-lute-bass-tuning
    fretLabels = \markuplist
      \override #'(font-name . "Old English Text MT") {
      "a" "b" "c" "d" "e" "f" "g" "h" "i" "k"
    }
  }
}

dMajorChords = \chordmode {
  d
  d:7
  e:m
  e:7
  fs:m
  \once \set predefinedDiagramTable = #custom-fret-table-one
  fs:m
  g
  a
  a:7
  \once \set predefinedDiagramTable = #custom-fret-table-one
  a:7
  \once \set predefinedDiagramTable = #custom-fret-table-two
  a:7
  b:m
  cs:dim
}

dMajorWritten = \relative {
  \key d \major
  \transposition c
  \omit Staff.TimeSignature
  \cadenzaOn
  \accidentalStyle forget
  \stemUp
  <d fs a d a'>
  <d fs c' d fs>
  <e g b e g>
  <e gs b d gs>
  <fs a cs fs a>
  <a, fs' a fs'>
  <b d g b d g>
  <a e' a cs e a>
  <a e' a cs e g>
  <a e' g a e' g>
  <a e' g cs e a>
  <b d fs b d fs>
  <cs e g cs e g>
  \bar "|."
}

\score {
  \header {
    piece = "Common Chords in D Major"
  }
  <<
    \new ChordNames { \dMajorChords }
    \new FretBoards { \dMajorChords }
    \new Staff \transpose c c' \dMajorWritten
    \addlyrics {
      \tiny
      I
      \markup \rN { V 7 / IV }
      ii
      \markup \rN { V 7 / V }
      \markup \rN { iii }
      \markup \rN { iii 6 }
      \markup \rN { IV 6 }
      V
      \markup \rN { V 7 }
      \markup \rN { V 7 }
      \markup \rN { V 7 }
      vi
      \markup \rN { vii o }
    }
    \new TabStaff \dMajorWritten
  >>
}
