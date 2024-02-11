\version "2.24.3"
\language "english"

\header {
  title = "Christ ist erstanden"
  subtitle = \markup \normal-text {
    "from" \italic "Utilis et compendiaria" "(1523)"
  }
  composer = "Anonymous"
  arranger = "Hans Judenkönig"
  tagline = ##f
}

\include "../renaissance-lute-fretboards.ly"

\paper {
  system-system-spacing.padding = #6
}

\layout {
  \context {
    \FretBoards
    stringTunings = #renaissance-lute-tuning
  }
  \context {
    \Score
    tablatureFormat = #fret-letter-tablature-format
  }
  \context {
    \TabStaff
    stringTunings = #renaissance-lute-tuning
    % additionalBassStrings = \stringTuning <a,, bf,, c, d, e, f, g,>
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

% #(define RH rightHandFinger)

music = \relative {
  \key bf \major
  \time 2/2
  % \tempo 2 = 55
  <<
    {
      \voiceOne
      c'2 g'
      d f
      ef d
      c1\fermata
      g'2 a
      bf a
      g a
      g2. g4
      c2 a
      bf g
      f ef
      d1\fermata
      c2 g'
      d f
      ef d
      c1\fermata
      bf2 c
      d1\fermata
      ef2 g
      f4 ef d2
      c1\fermata
      \bar ".."
    }
    \\
    {
      \voiceTwo
      c,2 ef
      bf' bf
      c g
      c,1
      c'2 f,
      bf c
      ef d
      g,2. g4
      c2 f
      bf, ef
      bf c
      g1
      c,2 ef
      bf' bf
      c g
      c,1
      g'2 af
      g1
      c,2 ef
      bf'4 c g2
      c,1
    }
  >>
}

musicChords = \chordmode {
  c2:m ef
  g:m/bf bf
  c:m g
  c1:m
  c2:m f:7
  bf f
  ef d
  g2.:m g4:m
  c2:m f
  bf ef
  bf c:m
  g1:m
  c2:m ef
  g:m/bf bf
  c:m g
  c1:m
  g2:m af
  g1:m
  c2:m ef
  bf4 c:m g2:m
  c1:m
}

\score {
  <<
    % \new ChordNames \musicChords
    \new Staff { \clef "treble_8" \music }
    \new TabStaff \music
  >>
  % \midi {}
}