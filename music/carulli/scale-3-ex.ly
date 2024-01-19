\version "2.24.3"
\language "english"

scale = { c d e f g a b }
motif = { e4 f g e }

\score {
  \new Staff \with {
    instrumentName = \markup {
      \concat {
        N
        \hspace #.1
        \with-dimension #X #'(0 . 0) .
        \super o
      } 1.
    }
  }
  {
    \motif
    \modalTranspose e f \scale \motif
    \modalTranspose e g \scale \motif
    \modalTranspose e a \scale \motif
    \modalTranspose e b \scale \motif
    \modalTranspose e c' \scale \motif
    \modalTranspose e d' \scale \motif
    \break
    \modalTranspose e e' \scale \motif
    \modalTranspose e f' \scale \motif
    \modalTranspose e g' \scale \motif
    \modalTranspose e a' \scale \motif
    \modalTranspose e b' \scale \motif
    \modalTranspose e c'' \scale \motif
    \modalTranspose e d'' \scale \motif
    \modalTranspose e e'' \scale \motif
    \modalTranspose e f'' \scale \motif
    \modalTranspose e f'' \scale \motif

    \modalInversion f f'' \scale \motif
    \modalInversion f e'' \scale \motif
    \modalInversion f d'' \scale \motif
    \modalInversion f c'' \scale \motif
    \modalInversion f b' \scale \motif
    \modalInversion f a' \scale \motif
    \modalInversion f g' \scale \motif
    \modalInversion f f' \scale \motif
    \modalInversion f f' \scale \motif
    \modalInversion f e' \scale \motif
    \modalInversion f d' \scale \motif
    \modalInversion f c' \scale \motif
    \modalInversion f b \scale \motif
    \modalInversion f a \scale \motif
    \modalInversion f g \scale \motif
    \modalInversion f f \scale \motif
    c'2 r

    \bar "|."
  }
}

motiftwo = { e4 g f a }
cChord = { c' e' g' }
motifchordC = { c' e' g' c'' }
fChord = { f a c' }
motifchordF = { f a c' f' }
gChord = { g b d' f' }
motifchordG = { g b d' f' }

\score {
  \new Staff \with {
    instrumentName = \markup {
      \concat {
        N
        \hspace #.1
        \with-dimension #X #'(0 . 0) .
        \super o
      } 2.
    }
  }
  {
    \override Staff.Rest.style = #'classical

    \motiftwo
    \modalTranspose e g \scale \motiftwo
    \modalTranspose e b \scale \motiftwo
    \modalTranspose e d' \scale \motiftwo
    \modalTranspose e f' \scale \motiftwo
    \modalTranspose e a' \scale \motiftwo
    \modalTranspose e c'' \scale \motiftwo
    \modalTranspose e e'' \scale \motiftwo

    \modalInversion g e'' \scale \motiftwo
    \modalInversion g c'' \scale \motiftwo
    \modalInversion g a' \scale \motiftwo
    \modalInversion g f' \scale \motiftwo
    \modalInversion g d' \scale \motiftwo
    \modalInversion g b \scale \motiftwo
    \modalInversion g g \scale \motiftwo

    \modalTranspose c' e \cChord \motifchordC
    \modalTranspose c' g' \cChord \motifchordC
    \motifchordF
    \modalTranspose f a' \fChord \motifchordF
    \motifchordG
    \modalTranspose g g' \gChord \motifchordG
    c''4 g' c' r

    \bar "|."
  }
}

octave = { c' c'' }

intro = {
  \octave
  \transpose c e \octave
  \transpose c g \octave
  e'' c''

  \modalInversion f a' \scale \retrograde \motif
  \modalInversion c' c'' \cChord \motifchordC
}

third = { c'' a' }

motifthree = { \third \transpose c d \third }
motiffour = { \retrograde \octave c'' b' }
motiffive = { \retrograde \octave d'' e'' }
sixchord = \modalTranspose c e \cChord \motifchordC
sixfour = \modalTranspose c g \cChord \motifchordC
motifsix = { c'' e'' c'' b' }
motifseven = { g b d' c' }

\score {
  \layout {
    system-count = #6
  }
  \new Staff \with {
    instrumentName = \markup {
      \concat {
        N
        \hspace #.1
        \with-dimension #X #'(0 . 0) .
        \super o
      } 3.
    }
  }
  {
    \override Staff.Rest.style = #'classical

    \intro
    
    \modalTranspose e f \scale \motif
    \modalTranspose c' e \cChord \motifchordC

    \retrograde \modalTranspose e c' \scale \motiftwo
    d' b g r

    \intro

    \modalTranspose c' a \scale \motifthree
    \motifthree
    \modalInversion g c'' \scale \motiftwo

    \motiffour
    \modalTranspose c' a \scale \motiffive
    \modalTranspose c' d' \scale \motiffour
    \modalTranspose c' b \scale \motiffive
    \modalTranspose c' e' \scale \motiffour
    \motiffive
    \modalTranspose c' f' \scale \motiffour
    \modalTranspose c' d' \scale \motiffive
    \modalTranspose c' g' \scale \motiffour
    \modalTranspose c' e' \scale \motiffour
    \motiffour
    \modalTranspose c' a \scale \motiffour
    f' f_\markup \halign #-.3 \teeny "Pollice" f' e'

    d' c' b c'
    \modalTranspose e d' \scale \motif
    \modalTranspose e e' \scale \motiftwo
    \modalInversion g e' \scale \motiftwo

    \motifchordC
    \modalTranspose e' b \scale \sixchord
    \sixchord
    \modalTranspose e' f' \scale \sixchord
    \sixfour

    \modalInversion g e'' \scale \motiftwo
    \motifsix
    \modalTranspose c' a \scale \motifsix
    \modalTranspose c' f \scale \motifsix
    \modalTranspose c' d \scale \motifsix
    \modalTranspose c' b, \scale \motifsix

    \motifseven
    \modalTranspose g b \scale \motifseven
    \modalTranspose g d' \scale \motifseven
    f' b' d'' c''
    \modalTranspose g b' \scale \motifseven
    \modalTranspose g d'' \scale \motifseven

    f'' d'' b' d''
    g' b' f' g'
    d' f' b d'
    \modalTranspose e g \scale \motif

    \intro

    \relative {
      a' f d' c
      b g e' d
      c a f' e
      d b g' f
      e g c, e
      d f b, d
      c2 g
      e g
      c, r
    }

    \bar "|."
  }
}