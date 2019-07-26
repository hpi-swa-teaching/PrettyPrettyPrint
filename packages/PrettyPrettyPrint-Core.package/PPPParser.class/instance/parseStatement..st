parse-node
parseStatement: aState
	
	self nextNextToken isAssignment ifTrue: [ ^ self parseAssignment ].
	self nextToken isReturn ifTrue: [ ^ self parseReturnStatement ].
	
	^ self parseMessageSendState: aState