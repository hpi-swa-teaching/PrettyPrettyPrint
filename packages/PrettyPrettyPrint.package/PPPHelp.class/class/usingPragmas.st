as yet unclassified
usingPragmas
	
	^ HelpTopic
		title: 'Using Pragmas'
		contents: 'With pragmas you can control the settings of the PPP individually for a single method. Pragmas are placed in the method''s code, either directly before or directly after the declaration of the temporaries. Here are two examples:

someMessage
	<PrettyPrint: ''ignore'' option: ''True''>
	| someTemporary |

someOtherMessage
	| someTemporary |
	<PrettyPrint: ''ignore'' option: ''True''>

The PPP will only recognize pragmas that match the following pattern:
	<PrettyPrint: ''ruleName'' option: ''theOptionYouPrefer''>

Supported Rules (with options):
- ignore (True)'