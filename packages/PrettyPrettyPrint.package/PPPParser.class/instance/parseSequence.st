as yet unclassified
parseSequence
	| node |
	node := PPPSequenceNode new.
	
	node temporaries: self parseTemporaries.
	
	[self nextToken tokenType ~= #eof and:
	[self nextToken content ~= ']' and:
	[self nextToken content ~= ')' and:
	[self nextToken content ~= '}']]]] whileTrue: [
		self nextToken content = '^'
			ifTrue: [ node return: self parseReturnStatement ]
			ifFalse: [ node addStatement: (self parseStatement: false) ].
		
		[self nextToken content = '.'] whileTrue: [ self step: #special ]].
	
	^node