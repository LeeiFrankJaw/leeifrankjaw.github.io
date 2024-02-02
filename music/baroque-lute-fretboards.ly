\languageSaveAndChange "english"

\version "2.24.3"

\makeDefaultStringTuning #'baroque-lute-tuning \stringTuning <a, d f a d' f'>
% \makeDefaultStringTuning #'baroque-lute-bass-tuning \stringTuning <a,, b,, c, d, e, f, g,>

#(define custom-fret-table-one
  (make-fretboard-table default-fret-table))

#(define custom-fret-table-two
  (make-fretboard-table default-fret-table))

\addChordShape #'ef:m #baroque-lute-tuning "x;1-1-(;1-1;1-1;1-1;1-1-);"
\addChordShape #'ef #baroque-lute-tuning "x;1-1-(;2-2;1-1;1-1-);2-3;"
\addChordShape #'c:dim #baroque-lute-tuning "3-3;1-1-(;1-1;3-4;1-1;1-1-);"

\storePredefinedDiagram #default-fret-table
  \chordmode {d:m}
  #baroque-lute-tuning
  "o;o;o;o;o;o;"

\storePredefinedDiagram #default-fret-table
  \chordmode {d}
  #baroque-lute-tuning
  "x;o;1-1;o;o;4-4;"

\storePredefinedDiagram #default-fret-table
  \chordmode {d:7}
  #baroque-lute-tuning
  "x;o;1-1;3-4;o;1-2;"

\storePredefinedDiagram #default-fret-table
  \chordmode {a:m}
  #baroque-lute-tuning
  "o;2-1-(;4-3;3-2;2-1-);4-4;"

\storePredefinedDiagram #default-fret-table
  \chordmode {a}
  #baroque-lute-tuning
  "o;2-1-(;4-2;4-3;2-1-);4-4;"

\storePredefinedDiagram #default-fret-table
  \chordmode {a:7}
  #baroque-lute-tuning
  "o;2-1-(;4-2;4-3;2-1;2-1-);"

\storePredefinedDiagram #custom-fret-table-one
  \chordmode {a:7}
  #baroque-lute-tuning
  "o;2-1;2-2;o;2-3;2-4;"

\storePredefinedDiagram #custom-fret-table-two
  \chordmode {a:7}
  #baroque-lute-tuning
  "o;2-1-(;2-1;4-3;2-1-);4-4;"

\storePredefinedDiagram #default-fret-table
  \chordmode {g}
  #baroque-lute-tuning
  "2-1;o;2-2;2-3;o;2-4;"

\storePredefinedDiagram #default-fret-table
  \chordmode {ef:m}
  #baroque-lute-tuning
  #(chord-shape 'ef:m baroque-lute-tuning)

\storePredefinedDiagram #default-fret-table
  \chordmode {e:m}
  #baroque-lute-tuning
  #(offset-fret 1 (chord-shape 'ef:m baroque-lute-tuning))

\storePredefinedDiagram #default-fret-table
  \chordmode {ef}
  #baroque-lute-tuning
  #(chord-shape 'ef baroque-lute-tuning)

\storePredefinedDiagram #default-fret-table
  \chordmode {e}
  #baroque-lute-tuning
  #(offset-fret 1 (chord-shape 'ef baroque-lute-tuning))

\storePredefinedDiagram #default-fret-table
  \chordmode {e:7}
  #baroque-lute-tuning
  "x;2-1;3-3;2-2;o;3-4;"

\storePredefinedDiagram #default-fret-table
  \chordmode {f:m}
  #baroque-lute-tuning
  #(offset-fret 2 (chord-shape 'ef:m baroque-lute-tuning))

\storePredefinedDiagram #default-fret-table
\chordmode {fs:m}
  #baroque-lute-tuning
  #(offset-fret 3 (chord-shape 'ef:m baroque-lute-tuning))

\storePredefinedDiagram #custom-fret-table-one
\chordmode {fs:m}
  #baroque-lute-tuning
  "o;x;1;o;x;1;"

\storePredefinedDiagram #default-fret-table
  \chordmode {b:m}
  #baroque-lute-tuning
  "2-3;o;1-1;2-4;o;1-2;"

\storePredefinedDiagram #default-fret-table
\chordmode {c:dim}
  #baroque-lute-tuning
  #(chord-shape 'c:dim baroque-lute-tuning)

\storePredefinedDiagram #default-fret-table
\chordmode {cs:dim}
  #baroque-lute-tuning
  #(offset-fret 1 (chord-shape 'c:dim baroque-lute-tuning))

\languageRestore
