as yet unclassified
visitReturnNode: aNode

	buffer nextPut: $^.
	
	self profile spaceBeforeReturn ifTrue: [
		buffer nextPut: $  ].
	
	aNode value accept: self.
	
	self profile dotAfterReturn ifTrue: [
		buffer nextPut: $. ]