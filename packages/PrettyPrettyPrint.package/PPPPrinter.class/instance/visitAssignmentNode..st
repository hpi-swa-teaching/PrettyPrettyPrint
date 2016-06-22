as yet unclassified
visitAssignmentNode: aNode
	| buffer temp |
	
	buffer := WriteStream on: ''.
	
	buffer nextPutAll: aNode variable.
	
	self profile spaceAroundBinaryOperator
		ifTrue: [ buffer nextPutAll: ' := ' ]
		ifFalse: [ buffer nextPutAll: ':=' ].
	
	temp := (aNode value accept: self).
	buffer nextPutAll: temp.
	
	^buffer contents