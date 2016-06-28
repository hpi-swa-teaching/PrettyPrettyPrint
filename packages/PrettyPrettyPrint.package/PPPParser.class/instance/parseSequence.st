as yet unclassified
parseSequence
	| node precededByEmptyLine |
	node := PPPSequenceNode new.
	
	node temporaries: self parseTemporaries.
	
	[self nextToken isEof or: [self nextToken isAnyClosingBrace]] whileFalse: [
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
		
		[self nextToken isDot] whileTrue: [ self step: #special ]].
	
	^node