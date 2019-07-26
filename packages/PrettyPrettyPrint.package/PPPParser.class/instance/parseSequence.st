parse-node
parseSequence
	| node precededByEmptyLine statement |
	
	node := self sequenceNodeWithTemporariesAndPragmas.
	
	[ self nextToken endsSequence ] whileFalse: [
		precededByEmptyLine := self nextToken precededByEmptyLine.
		statement := (self parseStatement: PPPParserState new)
			precededByEmptyLine: precededByEmptyLine;
			yourself.
		
		node addStatement: (self flushCommentsTo: statement).
		
		self skipDots ].
	
	node trailingComments: self currentComments.
	self currentComments: OrderedCollection new.
	
	^ node