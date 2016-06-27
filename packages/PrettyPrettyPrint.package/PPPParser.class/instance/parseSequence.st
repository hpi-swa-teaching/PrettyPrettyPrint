as yet unclassified
parseSequence
	| node |
	node := PPPSequenceNode new.
	
	node temporaries: self parseTemporaries.
	
	[self nextToken isEof or: [self nextToken isAnyClosingBrace]] whileFalse: [
		self nextToken isReturn
			ifTrue: [ node return: self parseReturnStatement ]
			ifFalse: [ node addStatement: (self parseStatement: PPPParserState new) ].
		
		[self nextToken isDot] whileTrue: [ self step: #special ]].
	
	^node