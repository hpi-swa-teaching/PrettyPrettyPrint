as yet unclassified
visitAssignmentNode: aNode

	aNode variable accept: self.
	
	self profile spaceAroundBinaryOperator
		ifTrue: [ buffer nextPutAll: ' := ' ]
		ifFalse: [ buffer nextPutAll: ':=' ].
	
	aNode value accept: self