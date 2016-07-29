visit-node
visitAssignmentNode: aNode 
	| buffer |
	buffer := WriteStream on: ''.
	buffer nextPutAll: aNode variable.
	
	self profile spaceAroundBinaryOperator ifTrue: [ buffer nextPutAll: ' := ' ] ifFalse: [ buffer nextPutAll: ':=' ].
	
	buffer nextPutAll: (self visitValueNode: aNode value).
	
	^buffer contents