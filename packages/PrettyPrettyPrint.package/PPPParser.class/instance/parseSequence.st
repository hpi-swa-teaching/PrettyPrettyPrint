parse-node
parseSequence
	| node precededByEmptyLine |
	node := PPPSequenceNode new
		temporaries: self parseTemporaries;
		yourself.
	
	[self nextToken endsSequence] whileFalse: [
		precededByEmptyLine := self emptyLineBeforeNextToken.
		self nextToken isReturn
			ifTrue: [
				node return: ((self parseReturnStatement)
					precededByEmptyLine: precededByEmptyLine;
					yourself) ]
			ifFalse: [
				node addStatement: ((self parseStatement: PPPParserState new)
					precededByEmptyLine: precededByEmptyLine;
					yourself) ].
		
		self skipDots ].
	
	^node