as yet unclassified
visitAssignmentNode: aNode

	buffer nextPutAll: aNode variable.
	
	self profile spaceAroundBinaryOperator
		ifTrue: [ buffer nextPutAll: ' := ' ]
		ifFalse: [ buffer nextPutAll: ':=' ].
	
	aNode value accept: self