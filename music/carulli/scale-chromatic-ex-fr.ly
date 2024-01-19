\version "2.24.3"
\language "english"

\layout {
  system-count = #7
}

\relative {
  \override Staff.Rest.style = #'classical
  \override TextScript.staff-padding = #5.5
  c'' c, d e
  f g a b
  c d e f
  g e f d
  c, c' b a
  g f e d
  c d e f
  \break
  fs g a g
  d e f g
  gs a b a
  e f g gs
  a b c cs
  d e f fs
  g e f! d
  c, c' ef d
  \break
  c ef d c
  g' fs g af
  g f! ef d
  ef d c bf
  c bf af g
  af g f ef
  f d g g,
  c ef g c,
  cs e! g cs,
  d f a d,
  ds fs a ds,
  e g b e,
  es gs b es,
  fs a cs fs,
  fss as cs fss,
  gs b ds gs,
  \break
  a c! ef a,
  bf df f bf,
  b! d! f b,
  c ef g c,
  cs e! g cs,
  d f d c
  b g a b
  c ef c bf
  \break
  a f g a
  bf df bf af
  g ef f g
  af cf af gf
  f df ef f
  fs a! fs e!
  ds b! cs ds
  e g e d!
  \break
  cs a b cs
  d f! d c!
  b g a b
  c d e f
  g a b c_"Voyez le Suplément à la page 4."
  gs a e f
  cs d g g,
  c c' c, r
  \bar "|."
}