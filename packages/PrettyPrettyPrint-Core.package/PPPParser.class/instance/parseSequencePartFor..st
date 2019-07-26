parse-part
parseSequencePartFor: aPPPSequenceNode
	
	| precededByEmptyLine statement |
	
	precededByEmptyLine := self nextToken precededByEmptyLine.
	statement := (self parseStatement: PPPParserState new)
		precededByEmptyLine: precededByEmptyLine;
		yourself.
	
	aPPPSequenceNode addStatement: (self flushCommentsTo: statement).
	self skipDots