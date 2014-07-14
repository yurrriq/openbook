<%page args="part"/>
% if part=='Vars':
<%
	attributes['doChords']=True
	attributes['doVoice']=True
	attributes['render']="Fake"

	# from the fake book
	attributes['title']="Ornithology"
	attributes['style']="Jazz"
	# from the fake book
	attributes['composer']="Charlie Parker, Benny Harris"
	# from the fake book
	attributes['piece']="Fast Swing"
	# from the fake book
	attributes['copyright']="1946 ATLANTIC MUSIC CORP."
	# from the fake book
	attributes['copyrightextra']="Renewed and assigned 1974 ATLANTIC MUSIC CORP."

	attributes['typesetter']="Mark Veltzer <mark@veltzer.net>"
	attributes['completion']="5"
	attributes['uuid']="dac427e4-0b81-11e4-9974-0f7c29702a29"
	attributes['structure']="ABAC"
	attributes['structureremark']="This can also be seen as AB but they start with exactly the same first 8 bar so ABAC is better"

	attributes['idyoutuberemark']=""
	attributes['idyoutube']=""
	attributes['idyoutuberemark']=""
	attributes['idyoutube']=""
%>
% endif

% if part=='Doc':
	DONE:
	- put in the tunes structure
	- added the epdf from the fake book.
	- added the meta data from the fake book.
	- put in the chords (fakebook).
	- put in the tune (fakebook).
	- check the chords (fakebook).
	- check the tune (fakebook).
	- heard the tune to check that it is right and adjust the tempo.
	TODO:
	- added youtube performances.
	- add another version of this tune.
% endif

% if part=='ChordsFake':
\chordmode {
	\startChords
	\startSong

	\partial 8 s8 |

	\repeat volta 2 {
		\myMark "A"
		\startPart
		g1*2:maj7 | g2:m7 c:7 | g:m7 | c:7 | \myEndLine
		f1*2:maj7 | f1:m7 | bes:7 | \myEndLine
		\endPart

		\myMark "B"
		\myMark "C"
		\startPart
		ees:7 | d:7 |
		\endPart
	} \alternative {
		{
			g:m | c2:m7.5- d:7 | \myEndLine
			b1:m7 | e:7 | a:m7 | d:7 | \myEndLine
		}
		{
			g | a2:m7 d:7 | \myEndLine
			g/b bes:7 | a:m7 aes:7 | g1*2:maj7 | \myEndLine
		}
	}

	\endSong
	\endChords
}
% endif

% if part=='VoiceFake':
\relative {
	%% https://veltzer.net/blog/blog/2010/08/14/musical-tempo-table/
	\tempo "Presto" 4 = 200
	\time 4/4
	\key g \major

	\partial 8 d8 |

	\repeat volta 2 {
		%% part "A"
		g a b c d b c d | b g r4 r r8 d | g a bes c d e4 f!8~ | f g, a bes~ bes4. d8 |
		c a4 f!8 bes gis a f~ | f r r4 r4 r8 aes~ | aes4 g8 f! e g f c | f!4 ees8 d r4 r8 des'8~ |
		%% part "B"
		%% part "C"
		des4 c8 bes a c bes g | a4 g8 fis r4 r8 d |
	} \alternative {
		{
			a' g d bes f' d ees d~ | d a' \times2/3 { fis! g a fis g a fis g a } |
			d4 r r8 a \times2/3 { fis g a } | \times2/3 { fis g a fis g a fis g a fis g a } |
			d b a g c aes fis d | ees f! g b bes ges e! d |
		}
		{
			a' g d b f'! d ees d~ | d a' \times2/3 { fis! g a fis g a fis g a } |
			d r r4 r2 | r8 a \times2/3 { fis g a fis g a fis g a } |
			d a \times2/3 { fis g a fis g a fis g a } | d r r4 r2 |
		}
	}
}
% endif
