visit-node
visitAssignmentNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	buffer nextPutAll: aNode variable.
	
	self profile spaceAroundBinaryOperator
		ifTrue: [ buffer nextPutAll: ' := ' ]
		ifFalse: [ buffer nextPutAll: ':=' ].
	
	buffer nextPutAll: (self visitNode: aNode value).
	
	^buffer contents