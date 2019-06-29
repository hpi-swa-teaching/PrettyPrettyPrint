helpers-printing
printBinaryMessage: aNode 
	| buffer |
	buffer := WriteStream on: ''.
	
	(aNode isInCascade not and: [ self profile spaceAroundBinaryOperator ]) ifTrue: [ buffer space ].
	buffer nextPutAll: aNode selector.
	self profile spaceAroundBinaryOperator ifTrue: [ buffer space ].
	
	buffer nextPutAll: (self visitValueNode: aNode arguments first).
	^buffer contents