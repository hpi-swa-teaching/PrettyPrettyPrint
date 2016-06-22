as yet unclassified
visitMessageNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	buffer nextPutAll: (aNode receiver accept: self).
	
	(aNode isBinaryMessage not or: [ self profile spaceAroundBinaryOperator]) ifTrue: [ buffer nextPut: $  ].
	
	buffer nextPutAll: aNode selector.
	
	(aNode arguments isEmpty) ifFalse: [
		(aNode isBinaryMessage not or: [ self profile spaceAroundBinaryOperator]) ifTrue: [ buffer nextPut: $  ].
		
		buffer nextPutAll: (aNode arguments first accept: self)].
	
	^ buffer contents