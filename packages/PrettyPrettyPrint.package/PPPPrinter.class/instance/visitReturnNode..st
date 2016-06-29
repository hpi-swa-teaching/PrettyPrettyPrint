visit-node
visitReturnNode: aNode
	| buffer |
	buffer := WriteStream with: '^'.
	
	self profile spaceBeforeReturn ifTrue: [ buffer space ].
	buffer nextPutAll: (self visitValueNode: aNode value).
	self profile dotAfterReturn ifTrue: [ buffer nextPut: $. ].
	
	^buffer contents