\version "2.24.4"

F = { f,_"F" f^"M" f^"M" }
CSeven = { c_"C7" c'^"7" c'^"7"}

partOne = { f4\<( g4 f4 e4 f4 e4 d4 e4 d4 c2.) }
partOneBass = { \F \F \F \F }


\new GrandStaff <<
  \new Staff \relative c' {
    \time 3/4
    \clef treble
    \partOne
    f4^3\(
      f4^4 f4 f4 e4 f4 \!
      g2.( \>  g2.  \!)
    \)
    \partOne
    g'4^4(
      g4^5 g4 g4 f4 e4 \! d2.\> c2.\!
    )
  }
  \new Staff \absolute {
    \time 3/4
    \clef bass
    \partOneBass
    \F \F \CSeven \CSeven
    \CSeven \CSeven \CSeven \CSeven
    \CSeven \CSeven \F \F
  }
>>
