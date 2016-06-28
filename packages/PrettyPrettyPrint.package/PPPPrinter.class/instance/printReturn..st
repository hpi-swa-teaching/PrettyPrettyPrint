as yet unclassified
printReturn: aNode
	| buffer |
	
	buffer := WriteStream on: ''.
	
	buffer nextPut: $^.
	
	self profile spaceBeforeReturn ifTrue: [
		buffer nextPut: $  ].
	
	buffer nextPutAll: (self visitNode: aNode value).
	
	self profile dotAfterReturn ifTrue: [
		buffer nextPut: $. ].
	
	^ buffer contents