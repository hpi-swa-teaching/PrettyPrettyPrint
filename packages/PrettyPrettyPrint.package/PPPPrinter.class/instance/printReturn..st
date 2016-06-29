helpers-printing
printReturn: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	
	buffer nextPut: $^.
	
	self profile spaceBeforeReturn ifTrue: [
		buffer nextPut: $  ].
	
	buffer nextPutAll: (self visitValueNode: aNode value).
	
	self profile dotAfterReturn ifTrue: [
		buffer nextPut: $. ].
	
	^ buffer contents