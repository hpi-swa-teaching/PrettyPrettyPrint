as yet unclassified
visitMessageNode: aNode

	aNode receiver accept: self.
	
	(aNode isBinaryMessage not or: [ self class spaceAroundBinaryOperator]) ifTrue: [ buffer nextPut: $  ].
	
	buffer nextPutAll: aNode selector.
	
	(aNode arguments isEmpty) ifFalse: [
		(aNode isBinaryMessage not or: [ self class spaceAroundBinaryOperator]) ifTrue: [ buffer nextPut: $  ].
		
		aNode arguments first accept: self ]