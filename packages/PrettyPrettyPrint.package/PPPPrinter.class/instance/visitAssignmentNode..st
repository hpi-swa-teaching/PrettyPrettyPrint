as yet unclassified
visitAssignmentNode: aNode
	| buffer temp |
	
	buffer := WriteStream on: ''.
	
	self printOpenParethesesOf: aNode on: buffer.
	
	buffer nextPutAll: aNode variable.
	
	self profile spaceAroundBinaryOperator
		ifTrue: [ buffer nextPutAll: ' := ' ]
		ifFalse: [ buffer nextPutAll: ':=' ].
	
	temp := (aNode value accept: self).
	buffer nextPutAll: temp.
	
	self printCloseParethesesOf: aNode on: buffer.
	
	^buffer contents