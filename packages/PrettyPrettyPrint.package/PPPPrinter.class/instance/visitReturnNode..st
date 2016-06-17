as yet unclassified
visitReturnNode: aNode

	buffer nextPut: $^.
	
	self class spaceBeforeReturn ifTrue: [
		buffer nextPut: $  ].
	
	aNode value accept: self.
	
	self class dotAfterReturn ifTrue: [
		buffer nextPut: $. ]