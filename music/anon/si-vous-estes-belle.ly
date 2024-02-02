\version "2.24.3"
\language "english"

\header {
  title = "Si vous estes belle"
  subtitle = \markup \normal-text {
    "from 1549 edition of" \italic "Carminum quae chely vel testudine canuntur"
  }
  composer = "Anonymous"
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
  \time 2/2
  % \tempo 4 = 85
  <<
    {
      \voiceOne
      \repeat volta 2 {
        c'8 d e c
        f4 f
        c8 d e c
        <b d>4 d
        c8 d e c
        f4 f8 g
        e c d b
        c4 c
      }
      \repeat volta 2 {
        g'8 bf a g
        f4 f
        f8 d e f
        g4 g
        g8 bf a g
        f4 f8 g
        c, e d b
        c4 c
      }
    }
    \\
    {
      \voiceTwo
      \repeat volta 2 {
        c,2 bf4. bf8
        c2 g4. g8
        c2 bf
        c4 g c4. c8
      }
      \repeat volta 2 {
        g'4 f d4. d8
        d4 c g4. g8
        g'4 f d d
        c g c4. c8
      }
    }
  >>
}

musicChords = \chordmode {
  c2 bf:maj7
  c g:m7
  c bf:maj7
  c4:7 g:m7 c2
  g4:m g:m7/f d2:m
  d4:m d:m7/c g2:m
  g4:m g:m7/f d2:m
  c4:7 g:m7 c2
}

\score {
  <<
    % \new ChordNames \musicChords
    \new Staff { \clef "treble_8" \music }
    \new TabStaff \music
  >>
  % \midi {}
}