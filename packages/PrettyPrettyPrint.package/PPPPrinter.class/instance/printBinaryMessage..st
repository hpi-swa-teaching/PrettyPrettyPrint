as yet unclassified
printBinaryMessage: aNode
	| buffer |
	buffer := WriteStream on: ''.
	
	buffer nextPutAll: aNode selector.
	
	self profile spaceAroundBinaryOperator ifTrue: [ buffer nextPut: $  ].
	
	buffer nextPutAll: (aNode arguments first accept: self).
	
	^buffer contents