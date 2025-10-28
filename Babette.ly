\version "2.24.4"
\header {
  title = "Babette"
  composer = "S.A. Mindeci"
  tagline = ""
}

B = { bes, bes^"M" bes^"M" }
BFirst = { bes,_"Bb" bes^"M" bes^"M" }
F = { f, f^"M" f^"M" }
FFirst = { f,_"F" f^"M" f^"M" }
FSeven = { f, f^"7" f^"7" }
FSevenFirst = { f,_"F7" f^"7" f^"7" }
CSeven = { c_"C7" c'^"7" c'^"7"}
CSevenFirst = { c c'^"7" c'^"7"}

partOne = { f4\<( g4 f4 e4 f4 e4 d4 e4 d4 c2.) }
partOneBass = { \FFirst \F \F \F }


\new GrandStaff <<
  \new Staff \relative c' {
    \time 3/4
    \clef treble
    \bar ".|:"
    \partOne
    f4-3\(
      f4-4 f4 f4 e4 f4 \!
      g2.( \>  g2.  )
    \)
    \partOne
    g'4-4(
      g4^5 g4 \! g4 f4 e4 \! d2.\> c2.\!
    )
    f8-2\< f8-3 g4-.-4 f4-.-3
    e8-2 e8-3 f4-.-4 e4-.-3
    d8-2 d8-3 e4-.-4 d4-.-3
    c2.
    f4-. f4-. f4-. f4( g4-. ) f4 \!
    d2.(d2.)
    a'2-5( g4 a2 g4)
    g2( f4 g2 f4)
    g2( e4 a2 g4)
    \set doubleSlurs = ##t
    f2.(f4) r2
    \bar ":|."
  }
  \new Staff \absolute {
    \time 3/4
    \clef bass
    \partOneBass
    \F \F \CSevenFirst \CSeven
    \CSeven \CSeven \CSeven \CSeven
    \CSeven \CSeven \FFirst \F
    \F
    \F
    \F
    \F
    \FSevenFirst \FSeven
    \BFirst \B
    \BFirst \B
    \FFirst \F \CSevenFirst \CSeven \FFirst
    <f, f>4^"M" r2
  }
>>
