visit-node
visitAssignmentNode: aPPPAssignmentNode 

	self currentLine nextPutAll: aPPPAssignmentNode variable.
	
	self profile spaceAroundBinaryOperator 
		ifTrue: [ self currentLine nextPutAll: ' := ' ] 
		ifFalse: [ self currentLine nextPutAll: ':=' ].
	self incrementIndent.
	self visitValueNode: aPPPAssignmentNode value.
	self decrementIndent