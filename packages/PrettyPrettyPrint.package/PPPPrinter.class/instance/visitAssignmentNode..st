as yet unclassified
visitAssignmentNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	
	self printOpenParethesesOf: aNode on: buffer.
	
	buffer nextPutAll: aNode variable.
	
	self profile spaceAroundBinaryOperator
		ifTrue: [ buffer nextPutAll: ' := ' ]
		ifFalse: [ buffer nextPutAll: ':=' ].
	
	buffer nextPutAll: (aNode value accept: self).
	
	self printCloseParethesesOf: aNode on: buffer.
	
	^buffer contents