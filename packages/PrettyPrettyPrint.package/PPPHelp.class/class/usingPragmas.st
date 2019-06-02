as yet unclassified
usingPragmas
	"This method was automatically generated. Edit it using:"
	"PPPHelp edit: #usingPragmas"
	^(HelpTopic
		title: 'Using Pragmas'
		contents: 
'With pragmas you can control the settings of the PPP individually for a single method. Pragmas are placed in the method''s code, either directly before or directly after the declaration of the temporaries. Here are two examples:

someMessage
	<PrettyPrint: #ignore option: true>
	| someTemporary |

someMessage
	| someTemporary |
	<PrettyPrint: #ignore option: true>

The PPP will only recognize pragmas that match the following pattern:
	<PrettyPrint: #ruleName option: theOptionYouPrefer>

Supported Rules (with options):
- #ignore (true)!
]style[(229 11 3 12 1 7 1 7 1 4 3 1 1 13 1 1 2 11 2 1 1 13 1 1 3 12 1 7 1 7 1 4 75 12 1 9 1 7 1 18 37 7 2 4 1),b,,c000124000b,,c000000124,,c000124000b,,c124000000,,cgray;,,c104104104,,cgray;,,b,,cgray;,,c104104104,,cgray;,,c000124000b,,c000000124,,c000124000b,,c124000000,,c000124000b,,c000000124,,c000124000b,,c104104104,,c000000124,,c124000000,!' readStream nextChunkText)
			key: #usingPragmas