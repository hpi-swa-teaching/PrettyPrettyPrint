as yet unclassified
parseSequence
	| node statement |
	node := PPPSequenceNode new.
	
	" if there's only a method declaration, we need to bail early "
	self nextToken tokenType = #eof ifTrue: [ ^node ].
	
	node temporaries: self parseTemporaries.
	
	[self nextToken tokenType ~= #eof and:
	[self nextToken content ~= ']' and:
	[self nextToken content ~= ')']]] whileTrue: [
		statement := (self parseStatement: false).
		(statement class = PPPReturnNode)
			ifTrue: [ node return: statement ]
			ifFalse: [ node addStatement: statement ]].
	
	^node