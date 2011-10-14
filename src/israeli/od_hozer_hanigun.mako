include(src/include/common.lyi)
\header {
	default_header_heb

	title="עוד חוזר הניגון"
	singer="ברי סחרוף"
	piece="בלדה מתונה"

	completion="0"
	uuid="505a0a3a-a26f-11df-bbef-0019d11e5a41"
}
jazzTune

myChords=\chordmode {
	\mark "opening"
	\repeat volta 4 {
		b2:m7 a2:7 |
	}
	\mark "verse"
	d2 e2:m7 | g2 b2:m7 | e2:m7 fis2:7 | g2 d2 | \myEndLine
	g2 d2 | e2:m7 b2:m7 | e2:m7 fis2:7 | g2 a2:7 | \myEndLine
}

include(src/include/harmony.lyi)