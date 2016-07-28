parse-node
parseSequence
	| node precededByEmptyLine |
	node := PPPSequenceNode new
		temporaries: self parseTemporaries;
		yourself.
	
	[self nextToken endsSequence] whileFalse: [
		precededByEmptyLine := self nextToken precededByEmptyLine.
		
		node addStatement: ((self parseStatement: PPPParserState new)
			precededByEmptyLine: precededByEmptyLine;
			yourself).
		
		self skipDots ].
	
	^node