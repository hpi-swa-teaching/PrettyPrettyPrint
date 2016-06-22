as yet unclassified
visitReturnNode: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	
	buffer nextPut: $^.
	
	self profile spaceBeforeReturn ifTrue: [
		buffer nextPut: $  ].
	
	buffer nextPutAll: (aNode value accept: self).
	
	self profile dotAfterReturn ifTrue: [
		buffer nextPut: $. ].
	
	^ buffer contents