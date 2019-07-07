helpers-printing
printBinaryMessage: aPPPMessageNode
	
	(aPPPMessageNode isInCascade not and: [ self profile spaceAroundBinaryOperator ]) ifTrue: [ self currentLine space ].
	self currentLine nextPutAll: aPPPMessageNode selector.
	self profile spaceAroundBinaryOperator ifTrue: [ self currentLine space ].
	
	self visitValueNode: aPPPMessageNode arguments first