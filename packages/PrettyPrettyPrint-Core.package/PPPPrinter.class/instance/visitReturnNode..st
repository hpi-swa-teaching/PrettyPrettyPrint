visit-node
visitReturnNode: aNode 

	| buffer |
	buffer := WriteStream on: ''.
	(self currentBlockLevel = 0 and: self profile newlineBeforeReturn) ifTrue: [ self newLineIndentOn: buffer. ].
	buffer nextPutAll: '^'.
	
	self profile spaceBeforeReturn ifTrue: [ buffer space. ].
	buffer nextPutAll: (self visitValueNode: aNode value).
	
	^ buffer contents.